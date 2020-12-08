package fastify;

/**
	`preHandler` is the fourth hook to be executed in the request lifecycle. The previous hook was `preValidation`, the next hook will be `preSerialization`.
**/
typedef PreHandlerHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, done:HookHandlerDoneFunction) -> Void;