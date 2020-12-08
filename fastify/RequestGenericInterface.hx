package fastify;

typedef RequestGenericInterface = {
	@:optional
	var Body : Any;
	@:optional
	var Querystring : Any;
	@:optional
	var Params : Any;
	@:optional
	var Headers : Any;
};