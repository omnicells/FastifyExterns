package fastify;

/**
	You can change the payload with the `onSend` hook. It is the sixth hook to be executed in the request lifecycle. The previous hook was `preSerialization`, the next hook will be `onResponse`.
	Note: If you change the payload, you may only change it to a string, a Buffer, a stream, or null.
**/
typedef OnSendHookHandler<OnSendPayload, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, payload:OnSendPayload, done:DoneFuncWithErrOrRes) -> Void;