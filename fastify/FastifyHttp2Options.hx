package fastify;

typedef FastifyHttp2Options<Server, Logger> = FastifyServerOptions<Server, Logger> & {
	var http2 : Bool;
	@:optional
	var http2SessionTimeout : Float;
};