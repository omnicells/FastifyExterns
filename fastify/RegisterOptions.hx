package fastify;

typedef RegisterOptions = {
	@:optional
	var prefix : String;
	@:optional
	var logLevel : LogLevel;
	@:optional
	var logSerializers : { };
};