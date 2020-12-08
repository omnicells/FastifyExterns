package fastify;

/**
	This hook is useful if you need to do some custom error logging or add some specific header in case of error.
	It is not intended for changing the error, and calling reply.send will throw an exception.
	This hook will be executed only after the customErrorHandler has been executed, and only if the customErrorHandler sends an error back to the user (Note that the default customErrorHandler always sends the error back to the user).
	Notice: unlike the other hooks, pass an error to the done function is not supported.
**/
typedef OnErrorHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, TError> = (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, error:TError, done:() -> Void) -> Void;