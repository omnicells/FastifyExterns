package fastify;

/**
	Content Type Parser method that operates on request content
**/
typedef FastifyContentTypeParser<RawServer, RawRequest, RouteGeneric> = ts.AnyOf2<(request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, payload:RawRequest) -> js.lib.Promise<Dynamic>, (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, payload:RawRequest, done:fastify.types.content_type_parser.ContentTypeParserDoneFunction) -> Void>;