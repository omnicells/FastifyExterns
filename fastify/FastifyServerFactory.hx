package fastify;

typedef FastifyServerFactory<RawServer> = (handler:FastifyServerFactoryHandler<RawServer, RawRequestDefaultExpression<RawServer>, RawReplyDefaultExpression<RawServer>>, opts:{ }) -> RawServer;