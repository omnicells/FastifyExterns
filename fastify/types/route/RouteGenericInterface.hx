package fastify.types.route;

typedef RouteGenericInterface = {
	@:optional
	var Body : Any;
	@:optional
	var Querystring : Any;
	@:optional
	var Params : Any;
	@:optional
	var Headers : Any;
	@:optional
	var Reply : Any;
};