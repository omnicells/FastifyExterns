package fastify;

/**
	`onTimeout` is useful if you need to monitor the request timed out in your service. (if the `connectionTimeout` property is set on the fastify instance)
	The onTimeout hook is executed when a request is timed out and the http socket has been hanged up. Therefore you will not be able to send data to the client.
**/
typedef OnTimeoutHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, done:HookHandlerDoneFunction) -> Void;