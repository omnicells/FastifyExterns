package ajv;

typedef Options = {
	@:optional
	@:native("$data")
	var DollarData : Bool;
	@:optional
	var allErrors : Bool;
	@:optional
	var verbose : Bool;
	@:optional
	var jsonPointers : Bool;
	@:optional
	var uniqueItems : Bool;
	@:optional
	var unicode : Bool;
	@:optional
	var format : ts.AnyOf2<String, Bool>;
	@:optional
	var formats : Dynamic;
	@:optional
	var keywords : Dynamic;
	@:optional
	var unknownFormats : ts.AnyOf3<Bool, Array<String>, String>;
	@:optional
	var schemas : ts.AnyOf2<Dynamic, Array<Dynamic>>;
	@:optional
	var schemaId : String;
	@:optional
	var missingRefs : ts.AnyOf2<Bool, String>;
	@:optional
	var extendRefs : ts.AnyOf2<Bool, String>;
	@:optional
	dynamic function loadSchema(uri:String, ?cb:(err:js.lib.Error, schema:Dynamic) -> Void):js.lib.PromiseLike<ts.AnyOf2<Bool, Dynamic>>;
	@:optional
	var removeAdditional : ts.AnyOf2<Bool, String>;
	@:optional
	var useDefaults : ts.AnyOf2<Bool, String>;
	@:optional
	var coerceTypes : ts.AnyOf2<Bool, String>;
	@:optional
	var strictDefaults : ts.AnyOf2<Bool, String>;
	@:optional
	var strictKeywords : ts.AnyOf2<Bool, String>;
	@:optional
	var strictNumbers : Bool;
	@:optional
	var async : ts.AnyOf2<String, Bool>;
	@:optional
	var transpile : ts.AnyOf2<String, (code:String) -> String>;
	@:optional
	var meta : ts.AnyOf2<Bool, Dynamic>;
	@:optional
	var validateSchema : ts.AnyOf2<Bool, String>;
	@:optional
	var addUsedSchema : Bool;
	@:optional
	var inlineRefs : ts.AnyOf2<Float, Bool>;
	@:optional
	var passContext : Bool;
	@:optional
	var loopRequired : Float;
	@:optional
	var ownProperties : Bool;
	@:optional
	var multipleOfPrecision : ts.AnyOf2<Float, Bool>;
	@:optional
	var errorDataPath : String;
	@:optional
	var messages : Bool;
	@:optional
	var sourceCode : Bool;
	@:optional
	dynamic function processCode(code:String, schema:Dynamic):String;
	@:optional
	var cache : Dynamic;
	@:optional
	var logger : ts.AnyOf2<Bool, CustomLogger>;
	@:optional
	var nullable : Bool;
	@:optional
	var serialize : ts.AnyOf2<Bool, (schema:ts.AnyOf2<Bool, Dynamic>) -> Dynamic>;
};