package fastify;

/**
	Fastify server instance. Returned by the core `fastify()` method.
**/
typedef FastifyInstance<RawServer, RawRequest, RawReply, Logger> = {
	var server : RawServer;
	var prefix : String;
	var version : Null<String>;
	var log : Logger;
	function addSchema(schema:Any):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	function getSchema(schemaId:String):Any;
	function getSchemas():{ };
	@:overload(function(afterListener:(err:js.lib.Error) -> Void):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	function after():FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	@:overload(function(closeListener:() -> Void):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	function close():FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	function decorate(property:ts.AnyOf2<String, js.lib.Symbol>, value:Dynamic, ?dependencies:Array<String>):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	function decorateRequest(property:ts.AnyOf2<String, js.lib.Symbol>, value:Dynamic, ?dependencies:Array<String>):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	function decorateReply(property:ts.AnyOf2<String, js.lib.Symbol>, value:Dynamic, ?dependencies:Array<String>):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	function hasDecorator(decorator:ts.AnyOf2<String, js.lib.Symbol>):Bool;
	function hasRequestDecorator(decorator:ts.AnyOf2<String, js.lib.Symbol>):Bool;
	function hasReplyDecorator(decorator:ts.AnyOf2<String, js.lib.Symbol>):Bool;
	@:overload(function(opts:ts.AnyOf2<String, light_my_request.InjectOptions>):js.lib.Promise<light_my_request.Response> { })
	@:overload(function():light_my_request.Chain { })
	function inject(opts:ts.AnyOf2<String, light_my_request.InjectOptions>, cb:light_my_request.CallbackFunc):Void;
	@:overload(function(port:ts.AnyOf2<String, Float>, address:String, callback:(err:js.lib.Error, address:String) -> Void):Void { })
	@:overload(function(port:ts.AnyOf2<String, Float>, callback:(err:js.lib.Error, address:String) -> Void):Void { })
	@:overload(function(port:ts.AnyOf2<String, Float>, ?address:String, ?backlog:Float):js.lib.Promise<String> { })
	@:overload(function(opts:{ var port : Float; @:optional var host : String; @:optional var backlog : Float; }, callback:(err:js.lib.Error, address:String) -> Void):Void { })
	@:overload(function(opts:{ var port : Float; @:optional var host : String; @:optional var backlog : Float; }):js.lib.Promise<String> { })
	function listen(port:ts.AnyOf2<String, Float>, address:String, backlog:Float, callback:(err:js.lib.Error, address:String) -> Void):Void;
	@:overload(function(readyListener:(err:js.lib.Error) -> Void):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	function ready():FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	@:overload(function<Options>(plugin:FastifyPluginAsync<Options, Dynamic>, ?opts:ts.AnyOf2<() -> Dynamic, Dynamic>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<Options>(plugin:ts.AnyOf4<FastifyPluginCallback<Options, Dynamic>, FastifyPluginAsync<Options, Dynamic>, js.lib.Promise<{ @:native("default") dynamic function default_(instance:FastifyInstance<Dynamic, Dynamic, Dynamic, FastifyLoggerInstance>, opts:Options, next:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void; }>, js.lib.Promise<{ @:native("default") dynamic function default_(instance:FastifyInstance<Dynamic, Dynamic, Dynamic, FastifyLoggerInstance>, opts:Options):js.lib.Promise<Void>; }>>, ?opts:ts.AnyOf2<() -> Dynamic, Dynamic>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	dynamic function register<Options>(plugin:FastifyPluginCallback<Options, Dynamic>, ?opts:ts.AnyOf2<() -> Dynamic, Dynamic>):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	function route<RouteGeneric, ContextConfig>(opts:RouteOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	@:overload(function<RouteGeneric, ContextConfig>(path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	@:overload(function<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	dynamic function get<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	@:overload(function<RouteGeneric, ContextConfig>(path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	@:overload(function<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	dynamic function head<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	@:overload(function<RouteGeneric, ContextConfig>(path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	@:overload(function<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	dynamic function post<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	@:overload(function<RouteGeneric, ContextConfig>(path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	@:overload(function<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	dynamic function put<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	@:overload(function<RouteGeneric, ContextConfig>(path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	@:overload(function<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	dynamic function delete<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	@:overload(function<RouteGeneric, ContextConfig>(path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	@:overload(function<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	dynamic function options<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	@:overload(function<RouteGeneric, ContextConfig>(path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	@:overload(function<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	dynamic function patch<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	@:overload(function<RouteGeneric, ContextConfig>(path:String, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	@:overload(function<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance> { })
	dynamic function all<RouteGeneric, ContextConfig>(path:String, opts:RouteShorthandOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, handler:RouteHandlerMethod<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, FastifyLoggerInstance>;
	/**
		`onRequest` is the first hook to be executed in the request lifecycle. There was no previous hook, the next hook will be `preParsing`.
		  Notice: in the `onRequest` hook, request.body will always be null, because the body parsing happens before the `preHandler` hook.
		
		`preParsing` is the second hook to be executed in the request lifecycle. The previous hook was `onRequest`, the next hook will be `preValidation`.
		Notice: in the `preParsing` hook, request.body will always be null, because the body parsing happens before the `preHandler` hook.
		
		`preValidation` is the third hook to be executed in the request lifecycle. The previous hook was `preParsing`, the next hook will be `preHandler`.
		
		`preHandler` is the fourth hook to be executed in the request lifecycle. The previous hook was `preValidation`, the next hook will be `preSerialization`.
		
		`preSerialization` is the fifth hook to be executed in the request lifecycle. The previous hook was `preHandler`, the next hook will be `onSend`.
		  Note: the hook is NOT called if the payload is a string, a Buffer, a stream or null.
		
		You can change the payload with the `onSend` hook. It is the sixth hook to be executed in the request lifecycle. The previous hook was `preSerialization`, the next hook will be `onResponse`.
		Note: If you change the payload, you may only change it to a string, a Buffer, a stream, or null.
		
		`onResponse` is the seventh and last hook in the request hook lifecycle. The previous hook was `onSend`, there is no next hook.
		The onResponse hook is executed when a response has been sent, so you will not be able to send more data to the client. It can however be useful for sending data to external services, for example to gather statistics.
		
		`onTimeout` is useful if you need to monitor the request timed out in your service. (if the `connectionTimeout` property is set on the fastify instance)
		The onTimeout hook is executed when a request is timed out and the http socket has been hanged up. Therefore you will not be able to send data to the client.
		
		This hook is useful if you need to do some custom error logging or add some specific header in case of error.
		It is not intended for changing the error, and calling reply.send will throw an exception.
		This hook will be executed only after the customErrorHandler has been executed, and only if the customErrorHandler sends an error back to the user (Note that the default customErrorHandler always sends the error back to the user).
		Notice: unlike the other hooks, pass an error to the done function is not supported.
		
		Triggered when a new route is registered. Listeners are passed a routeOptions object as the sole parameter. The interface is synchronous, and, as such, the listener does not get passed a callback
		
		Triggered when a new plugin is registered and a new encapsulation context is created. The hook will be executed before the registered code.
		This hook can be useful if you are developing a plugin that needs to know when a plugin context is formed, and you want to operate in that specific context.
		Note: This hook will not be called if a plugin is wrapped inside fastify-plugin.
		
		Triggered when fastify.listen() or fastify.ready() is invoked to start the server. It is useful when plugins need a "ready" event, for example to load data before the server start listening for requests.
		
		Triggered when fastify.close() is invoked to stop the server. It is useful when plugins need a "shutdown" event, for example to close an open connection to a database.
	**/
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:OnRequestAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:PreParsingHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:PreParsingAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:PreValidationHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:PreValidationAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:PreHandlerHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:PreHandlerAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<PreSerializationPayload, RouteGeneric, ContextConfig>(name:String, hook:PreSerializationHookHandler<PreSerializationPayload, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<PreSerializationPayload, RouteGeneric, ContextConfig>(name:String, hook:PreSerializationAsyncHookHandler<PreSerializationPayload, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<OnSendPayload, RouteGeneric, ContextConfig>(name:String, hook:OnSendHookHandler<OnSendPayload, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<OnSendPayload, RouteGeneric, ContextConfig>(name:String, hook:OnSendAsyncHookHandler<OnSendPayload, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:OnResponseHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:OnResponseAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:OnTimeoutHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:OnTimeoutAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:OnErrorHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, FastifyError>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:OnErrorAsyncHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, FastifyError>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function<RouteGeneric, ContextConfig>(name:String, hook:OnRouteHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function(name:String, hook:OnRegisterHookHandler<RawServer, RawRequest, RawReply, Logger>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function(name:String, hook:OnReadyHookHandler):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function(name:String, hook:OnReadyAsyncHookHandler):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	@:overload(function(name:String, hook:OnCloseHookHandler<RawServer, RawRequest, RawReply, Logger>):FastifyInstance<RawServer, RawRequest, RawReply, Logger> { })
	function addHook<RouteGeneric, ContextConfig>(name:String, hook:OnRequestHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	/**
		Set the 404 handler
	**/
	function setNotFoundHandler<RouteGeneric>(handler:(request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, Any>) -> Void):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	/**
		Set a function that will be called whenever an error happens
	**/
	function setErrorHandler<TError, RouteGeneric>(handler:(error:TError, request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, Any>) -> Void):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	/**
		Set the schema validator for all routes.
	**/
	function setValidatorCompiler(schemaCompiler:FastifySchemaCompiler):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	/**
		Set the schema serializer for all routes.
	**/
	function setSerializerCompiler(schemaCompiler:FastifySchemaCompiler):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	/**
		Set the reply serializer for all routes.
	**/
	function setReplySerializer(replySerializer:(payload:Any, statusCode:Float) -> String):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	function setSchemaErrorFormatter(errorFormatter:(errors:Array<fastify.types.schema.FastifySchemaValidationError>, dataVar:String) -> js.lib.Error):FastifyInstance<RawServer, RawRequest, RawReply, Logger>;
	/**
		Add a content type parser
	**/
	@:overload(function(contentType:ts.AnyOf2<String, Array<String>>, parser:FastifyContentTypeParser<RawServer, RawRequest, fastify.types.route.RouteGenericInterface>):Void { })
	@:overload(function<ParseAs>(contentType:ts.AnyOf2<String, Array<String>>, opts:{ var parseAs : Dynamic; @:optional var bodyLimit : Float; }, parser:FastifyBodyParser<ParseAs, RawServer, RawRequest, fastify.types.route.RouteGenericInterface>):Void { })
	dynamic function addContentTypeParser(contentType:ts.AnyOf2<String, Array<String>>, opts:{ @:optional var bodyLimit : Float; }, parser:FastifyContentTypeParser<RawServer, RawRequest, fastify.types.route.RouteGenericInterface>):Void;
	dynamic function hasContentTypeParser(contentType:String):Bool;
	/**
		Prints the representation of the internal radix tree used by the router
	**/
	function printRoutes():String;
};