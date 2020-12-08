package fastify;

typedef OnSendAsyncHookHandler<OnSendPayload, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, payload:OnSendPayload) -> js.lib.Promise<Any>;