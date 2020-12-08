package fastify;

/**
	`preSerialization` is the fifth hook to be executed in the request lifecycle. The previous hook was `preHandler`, the next hook will be `onSend`.
	  Note: the hook is NOT called if the payload is a string, a Buffer, a stream or null.
**/
typedef PreSerializationHookHandler<PreSerializationPayload, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, payload:PreSerializationPayload, done:DoneFuncWithErrOrRes) -> Void;