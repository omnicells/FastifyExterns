package ajv;

typedef StringFormatDefinition = {
	@:optional
	var type : String;
	var validate : FormatValidator;
	@:optional
	dynamic function compare(data1:String, data2:String):Float;
	@:optional
	var async : Bool;
};