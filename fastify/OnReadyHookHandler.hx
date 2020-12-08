package fastify;

/**
	Triggered when fastify.listen() or fastify.ready() is invoked to start the server. It is useful when plugins need a "ready" event, for example to load data before the server start listening for requests.
**/
typedef OnReadyHookHandler = (done:HookHandlerDoneFunction) -> Void;