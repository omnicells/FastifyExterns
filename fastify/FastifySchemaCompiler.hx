package fastify;

/**
	Compiler for FastifySchema Type
**/
typedef FastifySchemaCompiler = (routeSchema:fastify.types.schema.FastifyRouteSchemaDef) -> fastify.types.schema.FastifyValidationResult;