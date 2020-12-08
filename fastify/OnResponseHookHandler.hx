package fastify;

/**
	`onResponse` is the seventh and last hook in the request hook lifecycle. The previous hook was `onSend`, there is no next hook.
	The onResponse hook is executed when a response has been sent, so you will not be able to send more data to the client. It can however be useful for sending data to external services, for example to gather statistics.
**/
typedef OnResponseHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, done:HookHandlerDoneFunction) -> Void;