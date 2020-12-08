package fastify;

/**
	Route context object. Properties defined here will be available in the route's handler
**/
typedef FastifyContext<ContextConfig> = {
	var config : ContextConfig;
};