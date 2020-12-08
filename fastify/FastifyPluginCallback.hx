package fastify;

/**
	FastifyPluginCallback
	
	Fastify allows the user to extend its functionalities with plugins. A plugin can be a set of routes, a server decorator or whatever. To activate plugins, use the `fastify.register()` method.
**/
typedef FastifyPluginCallback<Options, Server> = (instance:FastifyInstance<Server, RawRequestDefaultExpression<Server>, RawReplyDefaultExpression<Server>, FastifyLoggerInstance>, opts:Options, next:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>) -> Void;