package ajv;

typedef NumberFormatDefinition = {
	var type : String;
	dynamic function validate(data:Float):ts.AnyOf2<Bool, js.lib.PromiseLike<Dynamic>>;
	@:optional
	dynamic function compare(data1:Float, data2:Float):Float;
	@:optional
	var async : Bool;
};