@:jsRequire("fastify") @valueModuleOnly extern class Fastify {
	/**
		Fastify factor function for the standard fastify http, https, or http2 server instance.
		
		The default function utilizes http
	**/
	@:native("default")
	@:overload(function<Server, Request, Reply, Logger>(opts:fastify.FastifyHttp2Options<Server, Logger>):fastify.FastifyInstance<Server, Request, Reply, Logger> & js.lib.PromiseLike<fastify.FastifyInstance<Server, Request, Reply, Logger>> { })
	@:overload(function<Server, Request, Reply, Logger>(opts:fastify.FastifyHttpsOptions<Server, Logger>):fastify.FastifyInstance<Server, Request, Reply, Logger> & js.lib.PromiseLike<fastify.FastifyInstance<Server, Request, Reply, Logger>> { })
	@:overload(function<Server, Request, Reply, Logger>(?opts:fastify.FastifyServerOptions<Server, Logger>):fastify.FastifyInstance<Server, Request, Reply, Logger> & js.lib.PromiseLike<fastify.FastifyInstance<Server, Request, Reply, Logger>> { })
	static function default_<Server, Request, Reply, Logger>(opts:fastify.FastifyHttp2SecureOptions<Server, Logger>):fastify.FastifyInstance<Server, Request, Reply, Logger> & js.lib.PromiseLike<fastify.FastifyInstance<Server, Request, Reply, Logger>>;
	/**
		Fastify factor function for the standard fastify http, https, or http2 server instance.
		
		The default function utilizes http
	**/
	@:overload(function<Server, Request, Reply, Logger>(opts:fastify.FastifyHttp2Options<Server, Logger>):fastify.FastifyInstance<Server, Request, Reply, Logger> & js.lib.PromiseLike<fastify.FastifyInstance<Server, Request, Reply, Logger>> { })
	@:overload(function<Server, Request, Reply, Logger>(opts:fastify.FastifyHttpsOptions<Server, Logger>):fastify.FastifyInstance<Server, Request, Reply, Logger> & js.lib.PromiseLike<fastify.FastifyInstance<Server, Request, Reply, Logger>> { })
	@:overload(function<Server, Request, Reply, Logger>(?opts:fastify.FastifyServerOptions<Server, Logger>):fastify.FastifyInstance<Server, Request, Reply, Logger> & js.lib.PromiseLike<fastify.FastifyInstance<Server, Request, Reply, Logger>> { })
	static function fastify<Server, Request, Reply, Logger>(opts:fastify.FastifyHttp2SecureOptions<Server, Logger>):fastify.FastifyInstance<Server, Request, Reply, Logger> & js.lib.PromiseLike<fastify.FastifyInstance<Server, Request, Reply, Logger>>;
}