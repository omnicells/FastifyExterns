package fastify;

/**
	FastifyPluginAsync
	
	Fastify allows the user to extend its functionalities with plugins. A plugin can be a set of routes, a server decorator or whatever. To activate plugins, use the `fastify.register()` method.
**/
typedef FastifyPluginAsync<Options, Server> = (instance:FastifyInstance<Server, RawRequestDefaultExpression<Server>, RawReplyDefaultExpression<Server>, FastifyLoggerInstance>, opts:Options) -> js.lib.Promise<Void>;