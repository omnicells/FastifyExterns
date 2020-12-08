package fastify;

/**
	FastifyRequest is an instance of the standard http or http2 request objects.
	It defaults to http.IncomingMessage, and it also extends the relative request object.
**/
typedef FastifyRequest<RouteGeneric, RawServer, RawRequest> = {
	var id : Dynamic;
	var params : Dynamic;
	var raw : RawRequest;
	var query : Dynamic;
	var log : FastifyLoggerInstance;
	var body : String;
	/**
		in order for this to be used the user should ensure they have set the attachValidation option.
	**/
	@:optional
	var validationError : js.lib.IError & {
		var validation : Dynamic;
		var validationContext : String;
	};
	final req : RawRequest;
	final headers : Dynamic;
	final ip : String;
	@:optional
	final ips : Array<String>;
	final hostname : String;
	final url : String;
	final protocol : String;
	final method : String;
	final routerPath : String;
	final routerMethod : String;
	final is404 : Bool;
	final socket : Dynamic;
	final connection : Dynamic;
};