package fastify;

typedef OnErrorAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, TError> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, error:TError) -> js.lib.Promise<Any>;