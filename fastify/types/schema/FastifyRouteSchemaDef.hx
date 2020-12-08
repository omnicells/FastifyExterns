package fastify.types.schema;

typedef FastifyRouteSchemaDef = {
	var schema : fastify.FastifySchema;
	var method : String;
	var url : String;
	@:optional
	var httpPart : String;
	@:optional
	var httpStatus : String;
};