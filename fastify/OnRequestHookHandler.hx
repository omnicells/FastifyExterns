package fastify;

/**
	`onRequest` is the first hook to be executed in the request lifecycle. There was no previous hook, the next hook will be `preParsing`.
	  Notice: in the `onRequest` hook, request.body will always be null, because the body parsing happens before the `preHandler` hook.
**/
typedef OnRequestHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, done:HookHandlerDoneFunction) -> Void;