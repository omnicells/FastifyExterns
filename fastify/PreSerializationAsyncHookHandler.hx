package fastify;

typedef PreSerializationAsyncHookHandler<PreSerializationPayload, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, payload:PreSerializationPayload) -> js.lib.Promise<Any>;