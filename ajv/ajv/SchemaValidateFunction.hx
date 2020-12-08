package ajv;

typedef SchemaValidateFunction = {
	@:selfCall
	function call(schema:Dynamic, data:Dynamic, ?parentSchema:Dynamic, ?dataPath:String, ?parentData:ts.AnyOf2<Dynamic, Array<Dynamic>>, ?parentDataProperty:ts.AnyOf2<String, Float>, ?rootData:ts.AnyOf2<Dynamic, Array<Dynamic>>):ts.AnyOf2<Bool, js.lib.PromiseLike<Dynamic>>;
	@:optional
	var errors : Array<ErrorObject>;
};