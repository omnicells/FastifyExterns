package light_my_request;

typedef Response = {
	var raw : {
		var res : Dynamic;
		var req : Request;
	};
	var rawPayload : Dynamic;
	var headers : Dynamic;
	var statusCode : Float;
	var statusMessage : String;
	var trailers : { };
	var payload : String;
	var body : String;
	dynamic function json<T>():T;
	var cookies : Array<Dynamic>;
};