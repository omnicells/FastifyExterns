package ajv;

typedef ValidateFunction = {
	@:selfCall
	function call(data:Dynamic, ?dataPath:String, ?parentData:ts.AnyOf2<Dynamic, Array<Dynamic>>, ?parentDataProperty:ts.AnyOf2<String, Float>, ?rootData:ts.AnyOf2<Dynamic, Array<Dynamic>>):ts.AnyOf2<Bool, js.lib.PromiseLike<Dynamic>>;
	@:optional
	var schema : ts.AnyOf2<Bool, Dynamic>;
	@:optional
	var errors : Array<ErrorObject>;
	@:optional
	var refs : Dynamic;
	@:optional
	var refVal : Array<Dynamic>;
	@:optional
	var root : ts.AnyOf2<Dynamic, ValidateFunction>;
	@:optional
	@:native("$async")
	var DollarAsync : Bool;
	@:optional
	var source : Dynamic;
};