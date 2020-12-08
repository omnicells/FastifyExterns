package fastify;

/**
	Generic plugin type.
**/
typedef FastifyPlugin<Options> = ts.AnyOf2<FastifyPluginCallback<Options, Dynamic>, FastifyPluginAsync<Options, Dynamic>>;