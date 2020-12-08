package fastify;

/**
	Body parser method that operatoes on request body
**/
typedef FastifyBodyParser<RawBody, RawServer, RawRequest, RouteGeneric> = ts.AnyOf2<(request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, rawBody:RawBody, done:fastify.types.content_type_parser.ContentTypeParserDoneFunction) -> Void, (request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, rawBody:RawBody) -> js.lib.Promise<Dynamic>>;