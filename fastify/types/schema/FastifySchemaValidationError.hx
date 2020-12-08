package fastify.types.schema;

typedef FastifySchemaValidationError = {
	@:optional
	var message : String;
	var dataPath : String;
};