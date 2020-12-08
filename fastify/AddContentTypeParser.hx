package fastify;

/**
	Natively, Fastify only supports 'application/json' and 'text/plain' content types. The default charset is utf-8. If you need to support different content types, you can use the addContentTypeParser API. The default JSON and/or plain text parser can be changed.
**/
typedef AddContentTypeParser<RawServer, RawRequest> = ts.AnyOf3<(contentType:ts.AnyOf2<String, Array<String>>, opts:{ @:optional var bodyLimit : Float; }, parser:FastifyContentTypeParser<RawServer, RawRequest, fastify.types.route.RouteGenericInterface>) -> Void, (contentType:ts.AnyOf2<String, Array<String>>, parser:FastifyContentTypeParser<RawServer, RawRequest, fastify.types.route.RouteGenericInterface>) -> Void, (contentType:ts.AnyOf2<String, Array<String>>, opts:{ var parseAs : Dynamic; @:optional var bodyLimit : Float; }, parser:FastifyBodyParser<Any, RawServer, RawRequest, fastify.types.route.RouteGenericInterface>) -> Void>;