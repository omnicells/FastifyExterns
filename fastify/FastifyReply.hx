package fastify;

/**
	FastifyReply is an instance of the standard http or http2 reply types.
	It defaults to http.ServerResponse, and it also extends the relative reply object.
**/
typedef FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = {
	var raw : RawReply;
	var context : FastifyContext<ContextConfig>;
	var log : FastifyLoggerInstance;
	var request : FastifyRequest<RouteGeneric, RawServer, RawRequest>;
	function code(statusCode:Float):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>;
	function status(statusCode:Float):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>;
	var statusCode : Float;
	var sent : Bool;
	function send(?payload:Dynamic):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>;
	function header(key:String, value:Dynamic):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>;
	function headers(values:{ }):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>;
	function getHeader(key:String):Null<String>;
	function getHeaders():{ };
	function removeHeader(key:String):Void;
	function hasHeader(key:String):Bool;
	@:overload(function(url:String):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> { })
	function redirect(statusCode:Float, url:String):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>;
	function callNotFound():Void;
	function getResponseTime():Float;
	function type(contentType:String):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>;
	function serializer(fn:(payload:Dynamic) -> String):FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>;
	function serialize(payload:Dynamic):String;
	function then(fullfilled:() -> Void, rejected:(err:js.lib.Error) -> Void):Void;
};