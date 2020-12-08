package fastify;

typedef ValidationResult = {
	var keyword : String;
	var dataPath : String;
	var schemaPath : String;
	var params : { };
	var message : String;
};