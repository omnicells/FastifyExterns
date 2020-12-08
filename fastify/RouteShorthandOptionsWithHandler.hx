package fastify;

/**
	Shorthand options including the handler function property
**/
typedef RouteShorthandOptionsWithHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = {
	dynamic function handler(request:FastifyRequest<RouteGeneric, RawServer, RawRequest>, reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>):ts.AnyOf2<Void, js.lib.Promise<ts.AnyOf2<Void, Dynamic>>>;
	@:optional
	var schema : FastifySchema;
	@:optional
	var attachValidation : Bool;
	@:optional
	dynamic function validatorCompiler(routeSchema:fastify.types.schema.FastifyRouteSchemaDef):fastify.types.schema.FastifyValidationResult;
	@:optional
	dynamic function serializerCompiler(routeSchema:fastify.types.schema.FastifyRouteSchemaDef):fastify.types.schema.FastifyValidationResult;
	@:optional
	var bodyLimit : Float;
	@:optional
	var logLevel : LogLevel;
	@:optional
	var config : ContextConfig;
	@:optional
	var version : String;
	@:optional
	var prefixTrailingSlash : String;
	@:optional
	dynamic function errorHandler(error:FastifyError, request:FastifyRequest<fastify.types.route.RouteGenericInterface, Dynamic, Dynamic>, reply:FastifyReply<Dynamic, Dynamic, Dynamic, fastify.types.route.RouteGenericInterface, Any>):Void;
	@:optional
	dynamic function schemaErrorFormatter(errors:Array<fastify.types.schema.FastifySchemaValidationError>, dataVar:String):js.lib.Error;
	@:optional
	var onRequest : ts.AnyOf2<OnRequestHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, Array<OnRequestHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>>>;
	@:optional
	var preParsing : ts.AnyOf2<PreParsingHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, Array<PreParsingHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>>>;
	@:optional
	var preValidation : ts.AnyOf2<PreValidationHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, Array<PreValidationHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>>>;
	@:optional
	var preHandler : ts.AnyOf2<PreHandlerHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, Array<PreHandlerHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>>>;
	@:optional
	var preSerialization : ts.AnyOf2<PreSerializationHookHandler<Any, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, Array<PreSerializationHookHandler<Any, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>>>;
	@:optional
	var onSend : ts.AnyOf2<OnSendHookHandler<Any, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, Array<OnSendHookHandler<Any, RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>>>;
	@:optional
	var onResponse : ts.AnyOf2<OnResponseHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, Array<OnResponseHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>>>;
	@:optional
	var onTimeout : ts.AnyOf2<OnTimeoutHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>, Array<OnTimeoutHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig>>>;
	@:optional
	var onError : ts.AnyOf2<OnErrorHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, FastifyError>, Array<OnErrorHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, FastifyError>>>;
};