package light_my_request;

typedef InjectOptions = {
	@:optional
	var url : ts.AnyOf2<String, {
		var pathname : String;
		@:optional
		var protocol : String;
		@:optional
		var hostname : String;
		@:optional
		var port : ts.AnyOf2<String, Float>;
		@:optional
		var query : ts.AnyOf2<String, { }>;
	}>;
	@:optional
	var path : ts.AnyOf2<String, {
		var pathname : String;
		@:optional
		var protocol : String;
		@:optional
		var hostname : String;
		@:optional
		var port : ts.AnyOf2<String, Float>;
		@:optional
		var query : ts.AnyOf2<String, { }>;
	}>;
	@:optional
	var headers : Dynamic;
	@:optional
	var query : ts.AnyOf2<String, { }>;
	@:optional
	var simulate : {
		var end : Bool;
		var split : Bool;
		var error : Bool;
		var close : Bool;
	};
	@:optional
	var authority : String;
	@:optional
	var remoteAddress : String;
	@:optional
	var method : HTTPMethods;
	@:optional
	var validate : Bool;
	@:optional
	var payload : Dynamic;
	@:optional
	var server : Dynamic;
	@:optional
	var cookies : { };
};