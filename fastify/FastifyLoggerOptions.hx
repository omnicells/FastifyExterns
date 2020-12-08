package fastify;

/**
	Fastify Custom Logger options. To enable configuration of all Pino options,
	refer to this example:
	https://github.com/fastify/fastify/blob/2f56e10a24ecb70c2c7950bfffd60eda8f7782a6/docs/TypeScript.md#example-5-specifying-logger-types
**/
typedef FastifyLoggerOptions<RawServer, RawRequest, RawReply> = {
	@:optional
	var serializers : {
		@:optional
		dynamic function req(req:RawRequest):{
			@:optional
			var method : String;
			@:optional
			var url : String;
			@:optional
			var version : String;
			@:optional
			var hostname : String;
			@:optional
			var remoteAddress : String;
			@:optional
			var remotePort : Float;
		};
		@:optional
		dynamic function err(err:FastifyError):{
			var type : String;
			var message : String;
			var stack : String;
		};
		@:optional
		dynamic function res(res:RawReply):{
			var statusCode : ts.AnyOf2<String, Float>;
		};
	};
	@:optional
	var level : String;
	@:optional
	dynamic function genReqId<RequestGeneric>(req:FastifyRequest<RequestGeneric, RawServer, RawRequest>):String;
	@:optional
	var prettyPrint : ts.AnyOf2<Bool, fastify.types.logger.PrettyOptions>;
};