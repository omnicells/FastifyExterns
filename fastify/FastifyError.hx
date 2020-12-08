package fastify;

typedef FastifyError = {
	var code : String;
	@:optional
	var statusCode : Float;
	@:optional
	var validation : Array<ValidationResult>;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};