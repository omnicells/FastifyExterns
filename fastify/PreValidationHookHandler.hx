package fastify;

/**
	`preValidation` is the third hook to be executed in the request lifecycle. The previous hook was `preParsing`, the next hook will be `preHandler`.
**/
typedef PreValidationHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, done:HookHandlerDoneFunction) -> Void;