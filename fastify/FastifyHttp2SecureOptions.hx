package fastify;

typedef FastifyHttp2SecureOptions<Server, Logger> = FastifyServerOptions<Server, Logger> & {
	var http2 : Bool;
	var https : Dynamic;
};