package fastify;

/**
	Triggered when fastify.close() is invoked to stop the server. It is useful when plugins need a "shutdown" event, for example to close an open connection to a database.
**/
typedef OnCloseHookHandler<RawServer, RawRequest, RawReply, Logger> = (instance:FastifyInstance<RawServer, RawRequest, RawReply, Logger>, done:HookHandlerDoneFunction) -> ts.AnyOf2<Void, js.lib.Promise<Any>>;