package fastify.types.schema;

typedef FastifyValidationResult = {
	@:optional
	var errors : Array<FastifySchemaValidationError>;
};