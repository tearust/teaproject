The **adapter** is a module within the [[hosting_CML]] that lives outside the enclave. Its goal is to accept http calls from outside world (eg. browser, other nodes). In our TEA Party example, only http adapter messages are handled and passed through to `handle_adapter_http_request`.

See the following code sample:
```
fn handle_adapter_request(data: &[u8], section: &str) -> HandlerResult<Vec<u8>> {
	let adapter_server_request = rpc::AdapterServerRequest::decode(data)?;
	debug!(
		"got adapter section: {}, request: {:?}",
		section, &adapter_server_request
	);
	match section {
		"http" => match adapter_server_request.msg {
			Some(rpc::adapter_server_request::Msg::AdapterHttpRequest(r)) => {
				let res = handle_adapter_http_request(r)?;
				return Ok(res);
			}
			_ => debug!(
				"ignored adapter ipfs server request message: {:?}",
				&adapter_server_request.msg
			),
		},
		_ => {
			debug!(
				"ignored adapter section ({}) message: {:?}",
				section, &adapter_server_request
			);
		}
	}
	Err(DISCARD_MESSAGE_ERROR.into())
}
```
