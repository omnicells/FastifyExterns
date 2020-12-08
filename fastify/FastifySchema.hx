package fastify;

/**
	Schemas in Fastify follow the JSON-Schema standard. For this reason
	we have opted to not ship strict schema based types. Instead we provide
	an example in our documentation on how to solve this problem. Check it
	out here:
**/
typedef FastifySchema = {
	@:optional
	var body : Any;
	@:optional
	var querystring : Any;
	@:optional
	var params : Any;
	@:optional
	var headers : Any;
	@:optional
	var response : Any;
};