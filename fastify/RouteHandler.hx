package fastify;

typedef RouteHandler<RouteGeneric, RawServer, RawRequest, RawReply, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>) -> ts.AnyOf2<Void, js.lib.Promise<ts.AnyOf2<Void, Dynamic>>>;