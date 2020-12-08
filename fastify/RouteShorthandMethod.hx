package fastify;

/**
	Fastify Router Shorthand method type that is similar to the Express/Restify approach
**/
typedef RouteShorthandMethod<RawServer, RawRequest, RawReply> = ts.AnyOf3<(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, Any, Any>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, Any, Any>) -> FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>, (path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, Any, Any>) -> FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>, (path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, Any, Any>) -> FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>>;