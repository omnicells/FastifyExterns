package fastify;

/**
	Standard Fastify logging function
**/
typedef FastifyLogFn = ts.AnyOf3<(msg:String, args:haxe.extern.Rest<Any>) -> Void, (obj:{ }) -> Void, (obj:{ }, msg:String) -> Void>;