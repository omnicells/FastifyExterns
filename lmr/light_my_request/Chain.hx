package light_my_request;

typedef Chain = {
	dynamic function delete(url:String):Chain;
	dynamic function get(url:String):Chain;
	dynamic function head(url:String):Chain;
	dynamic function options(url:String):Chain;
	dynamic function patch(url:String):Chain;
	dynamic function post(url:String):Chain;
	dynamic function put(url:String):Chain;
	dynamic function trace(url:String):Chain;
	dynamic function body(body:Dynamic):Chain;
	dynamic function headers(headers:Dynamic):Chain;
	dynamic function payload(payload:Dynamic):Chain;
	dynamic function query(query:Dynamic):Chain;
	dynamic function cookies(query:Dynamic):Chain;
	@:overload(function(callback:CallbackFunc):Void { })
	function end():js.lib.Promise<Response>;
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:Response) -> ts.AnyOf2<js.lib.PromiseLike<TResult1>, TResult1>, ?onrejected:(reason:Dynamic) -> ts.AnyOf2<js.lib.PromiseLike<TResult2>, TResult2>):js.lib.Promise<ts.AnyOf2<TResult1, TResult2>>;
	/**
		Attaches a callback for only the rejection of the Promise.
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Dynamic) -> ts.AnyOf2<js.lib.PromiseLike<TResult>, TResult>):js.lib.Promise<ts.AnyOf2<Response, TResult>>;
};