package ajv;

typedef KeywordDefinition = {
	@:optional
	var type : ts.AnyOf2<String, Array<String>>;
	@:optional
	var async : Bool;
	@:optional
	@:native("$data")
	var DollarData : Bool;
	@:optional
	var errors : ts.AnyOf2<String, Bool>;
	@:optional
	var metaSchema : Dynamic;
	@:optional
	var schema : Bool;
	@:optional
	var statements : Bool;
	@:optional
	var dependencies : Array<String>;
	@:optional
	var modifying : Bool;
	@:optional
	var valid : Bool;
	@:optional
	var validate : ts.AnyOf2<ValidateFunction, SchemaValidateFunction>;
	@:optional
	dynamic function compile(schema:Dynamic, parentSchema:Dynamic, it:CompilationContext):ValidateFunction;
	@:optional
	@:native("macro")
	dynamic function macro_(schema:Dynamic, parentSchema:Dynamic, it:CompilationContext):ts.AnyOf2<Bool, Dynamic>;
	@:optional
	@:native("inline")
	dynamic function inline_(it:CompilationContext, keyword:String, schema:Dynamic, parentSchema:Dynamic):String;
};