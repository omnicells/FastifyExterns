package fastify;

/**
	Options for a fastify server instance. Utilizes conditional logic on the generic server parameter to enforce certain https and http2
**/
typedef FastifyServerOptions<RawServer, Logger> = {
	@:optional
	var ignoreTrailingSlash : Bool;
	@:optional
	var connectionTimeout : Float;
	@:optional
	var keepAliveTimeout : Float;
	@:optional
	var pluginTimeout : Float;
	@:optional
	var bodyLimit : Float;
	@:optional
	var maxParamLength : Float;
	@:optional
	var disableRequestLogging : Bool;
	@:optional
	var onProtoPoisoning : String;
	@:optional
	var onConstructorPoisoning : String;
	@:optional
	var logger : ts.AnyOf3<Bool, FastifyLoggerOptions<RawServer, RawRequestDefaultExpression<RawServer>, RawReplyDefaultExpression<RawServer>>, Logger>;
	@:optional
	dynamic function serverFactory(handler:FastifyServerFactoryHandler<RawServer, RawRequestDefaultExpression<RawServer>, RawReplyDefaultExpression<RawServer>>, opts:{ }):RawServer;
	@:optional
	var caseSensitive : Bool;
	@:optional
	var requestIdHeader : String;
	@:optional
	var requestIdLogLabel : String;
	@:optional
	dynamic function genReqId<RequestGeneric>(req:FastifyRequest<RequestGeneric, RawServer, RawRequestDefaultExpression<RawServer>>):String;
	@:optional
	var trustProxy : ts.AnyOf5<String, Float, Bool, Array<String>, TrustProxyFunction>;
	@:optional
	dynamic function querystringParser(str:String):{ };
	@:optional
	var versioning : {
		function storage():{
			function get(version:String):Null<String>;
			function set(version:String, store:haxe.Constraints.Function):Void;
			function del(version:String):Void;
			function empty():Void;
		};
		function deriveVersion<Context>(req:Dynamic, ?ctx:Context):String;
	};
	@:optional
	var return503OnClosing : Bool;
	@:optional
	var ajv : {
		@:optional
		var customOptions : ajv.Options;
		@:optional
		var plugins : Array<haxe.Constraints.Function>;
	};
	@:optional
	dynamic function frameworkErrors<RequestGeneric>(error:FastifyError, req:FastifyRequest<RequestGeneric, RawServer, RawRequestDefaultExpression<RawServer>>, res:FastifyReply<RawServer, RawRequestDefaultExpression<RawServer>, RawReplyDefaultExpression<RawServer>, fastify.types.route.RouteGenericInterface, Any>):Void;
	@:optional
	dynamic function rewriteUrl(req:RawRequestDefaultExpression<RawServer>):String;
	@:optional
	dynamic function schemaErrorFormatter(errors:Array<fastify.types.schema.FastifySchemaValidationError>, dataVar:String):js.lib.Error;
};