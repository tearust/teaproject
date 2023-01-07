An actor in the TEA project is an executable module. It works as a dynamic link library. It can be written in any programming language but needs to compiled into the WebAssembly format. At runtime, it's loaded into the [[mini-runtime]]. The mini-runtime waits for the incoming request, parses the request, finds the corresponding actor, and dispatches the request to the coresponding actor's handler function. The handler function handles the request and then generates a response back to the mini-runtime. The mini-runtime then sends back the response.

In this case, the actor works as a Function-as-a-Service Lambda.

# Some Notes
There are many limitations for actors. For example:

- The actors are stateless. You cannot store any state inside the actor. 
- The actors cannot control anything besides its own internal memory. That means it cannot send network data, cannot read/write any file, and cannot read/write any memory outside of its own.
- The actors are short-lived and cannot keep running as a long-running service. Once the function executation is done, it loses all resources that it's occupied. 

But you can use [[provider]]s to overcome those limitations. Of course, the providers will check the [[capability]] of such an actor. If the actor doesn't have the proper capability, the request will be rejected. This is one layer of the security control.

