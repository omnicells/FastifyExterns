package fastify;

typedef PreParsingAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, payload:RequestPayload) -> js.lib.Promise<Any>;