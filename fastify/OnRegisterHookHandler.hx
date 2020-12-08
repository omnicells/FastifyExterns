package fastify;

/**
	Triggered when a new plugin is registered and a new encapsulation context is created. The hook will be executed before the registered code.
	This hook can be useful if you are developing a plugin that needs to know when a plugin context is formed, and you want to operate in that specific context.
	Note: This hook will not be called if a plugin is wrapped inside fastify-plugin.
**/
typedef OnRegisterHookHandler<RawServer, RawRequest, RawReply, Logger> = (instance:FastifyInstance<RawServer, RawRequest, RawReply, Logger>, done:HookHandlerDoneFunction) -> ts.AnyOf2<Void, js.lib.Promise<Any>>;