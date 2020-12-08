package fastify;

/**
	`preParsing` is the second hook to be executed in the request lifecycle. The previous hook was `onRequest`, the next hook will be `preValidation`.
	Notice: in the `preParsing` hook, request.body will always be null, because the body parsing happens before the `preHandler` hook.
**/
typedef PreParsingHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, payload:RequestPayload, done:ts.AnyOf3<() -> Void, (err:Any) -> Void, (err:Any, res:RequestPayload) -> Void>) -> Void;