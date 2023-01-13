This actor is loaded into the [[State_Machine_Replica]]'s [[mini-runtime]]. It is the same concept as stored procedure in traditional cloud computing webapp. There are many pure functions that handle incoming txns and modify the state (including [[state]] and [[GlueSQL]] data).

As you already know, every [[State_Machine_Replica]] runs an instance of this actor. All of them run the same txn at the same sequence and modify the same state to finally get the same new state. This is guaranteed by the [[consensus#Proof of Time| proof of time]] consensus. As an application developer, you don't need to care too much about how it works. You can simply assume there's only one instance of your function running that updates a single state. 

There are two types of requests: [[queries]] and [[commands]]. Please click the links to get to know more about them. At least you should know that queries execute immediately, but commands need to wait a period of time prior to execution. 

# Handling txns
Please go to [lib.rs](https://github.com/tearust/tapp-sample-teaparty/blob/demo-code/party-state-actor/src/lib.rs) and find the function   
fn txn_exec_inner(tsid: Tsid, txn_bytes: &[u8]) -> HandlerResult<()>. This is where most of the logic lives.
```
let (context_bytes, auth_key): (Vec<u8>, AuthKey) = match sample_txn {
		/// PostMessage, when user post a new message
		TeapartyTxn::PostMessage {
			token_id,
			from,
			ttl,
			auth_b64,
		} => {
			info!("PostMessage => from ttl: {:?},{:?}", &from, &ttl);
			let amt = calculate_fee(ttl);
			let auth_key: AuthKey = bincode::deserialize(&base64::decode(auth_b64)?)?;
			let auth_ops_bytes = actor_statemachine::query_auth_ops_bytes(auth_key)?;
			let ctx = TokenContext::new(tsid, base, token_id, &auth_ops_bytes)?;
			let req = ConsumeFromAccountRequest {
				ctx: bincode::serialize(&ctx)?,
				acct: bincode::serialize(&from)?,
				amt: bincode::serialize(&amt)?,
			};
			(actor_statemachine::consume_from_account(req)?, auth_key)
		}
```
The code above shows how you handle the PostMessage txn. 

This txn (sometimes we call it a command) is generated in the [[party-actor]] when user click post message button in [[party-fe]]. 

The message has been stored to the [[OrbitDb]] by  [[back_end_actor]], the only thing this actor is supposed to do in the state level is to transfer the gas fee. Gas fee is what the end users supposed to pay for this kind of service, in this case, posting a message.

In this function, the logic determines how much (amt) the user need to pay based on the TTL (time to live), and who should pay (the message sender). Finally, call the `actor_statemachine::consume_from_account` function. 

There are a few concepts we'll need to explain here.
[[AuthKey]] and [[Context]]. Please click the links for further explanation.

There are other txns this function handles. They are very straightforward from just reading the txn name and code.

# Commit state changes
After the txn has been handled, all changes are not commited yet. they are just saved to [[Context]]. So you can see the code after all the txns ahave been handled. This code is used to commit the changes.
```
if context_bytes.is_empty() {
		error!("######### party state actor txn handle returns empty ctx. Cannot commit ######");
		return Ok(());
	}
	let hidden_acct_balance_change_after_commit = actor_statemachine::commit(CommitRequest {
		ctx: context_bytes,
		auth_key: bincode::serialize(&auth_key)?,
	})?;
	if hidden_acct_balance_change_after_commit != (0, 0) {
		warn!("********* party state actor commit succesfully but the hidden account balance changed. make sure a follow up tx is trigger to keey the balance sheet balance. {:?}", &hidden_acct_balance_change_after_commit);
	} else {
		info!("*********  party state actor commit succesfully.");
	}
	Ok(())
}
fn health(_req: codec::core::HealthRequest) -> HandlerResult<()> {
	info!("health call from party-state actor");
	Ok(())
	```
The hidden balance is used to verify if the txn made any mistake that caused the state to be unbalanced after the update. If all the code is correct, there shouldn't be any unbalanced state. 

After the commit, the state is finally changed. Before the commit, any error causing the function to return early will not affect the state. The state remains as it was before. See [[Context]] for more details about atomic transaction concepts.

