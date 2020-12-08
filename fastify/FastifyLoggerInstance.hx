package fastify;

typedef FastifyLoggerInstance = {
	@:overload(function(obj:{ }, ?msg:String, args:haxe.extern.Rest<Any>):Void { })
	dynamic function info(msg:String, args:haxe.extern.Rest<Any>):Void;
	@:overload(function(obj:{ }, ?msg:String, args:haxe.extern.Rest<Any>):Void { })
	dynamic function warn(msg:String, args:haxe.extern.Rest<Any>):Void;
	@:overload(function(obj:{ }, ?msg:String, args:haxe.extern.Rest<Any>):Void { })
	dynamic function error(msg:String, args:haxe.extern.Rest<Any>):Void;
	@:overload(function(obj:{ }, ?msg:String, args:haxe.extern.Rest<Any>):Void { })
	dynamic function fatal(msg:String, args:haxe.extern.Rest<Any>):Void;
	@:overload(function(obj:{ }, ?msg:String, args:haxe.extern.Rest<Any>):Void { })
	dynamic function trace(msg:String, args:haxe.extern.Rest<Any>):Void;
	@:overload(function(obj:{ }, ?msg:String, args:haxe.extern.Rest<Any>):Void { })
	dynamic function debug(msg:String, args:haxe.extern.Rest<Any>):Void;
	function child(bindings:fastify.types.logger.Bindings):FastifyLoggerInstance;
};