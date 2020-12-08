package fastify;

typedef FastifyHttpsOptions<Server, Logger> = FastifyServerOptions<Server, Logger> & {
	var https : Dynamic;
};