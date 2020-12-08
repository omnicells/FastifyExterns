package ajv;

typedef ErrorObject = {
	var keyword : String;
	var dataPath : String;
	var schemaPath : String;
	var params : ErrorParameters;
	@:optional
	var propertyName : String;
	@:optional
	var message : String;
	@:optional
	var schema : Dynamic;
	@:optional
	var parentSchema : Dynamic;
	@:optional
	var data : Dynamic;
};