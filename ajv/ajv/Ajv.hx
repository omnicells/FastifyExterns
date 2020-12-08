package ajv;

typedef Ajv = {
	/**
		Validate data using schema
		Schema will be compiled and cached (using serialized JSON as key, [fast-json-stable-stringify](https://github.com/epoberezkin/fast-json-stable-stringify) is used to serialize by default).
	**/
	function validate(schemaKeyRef:ts.AnyOf3<String, Bool, Dynamic>, data:Dynamic):ts.AnyOf2<Bool, js.lib.PromiseLike<Dynamic>>;
	/**
		Create validating function for passed schema.
	**/
	function compile(schema:ts.AnyOf2<Bool, Dynamic>):ValidateFunction;
	/**
		Creates validating function for passed schema with asynchronous loading of missing schemas.
		`loadSchema` option should be a function that accepts schema uri and node-style callback.
	**/
	function compileAsync(schema:ts.AnyOf2<Bool, Dynamic>, ?meta:js.lib.Boolean, ?callback:(err:js.lib.Error, validate:ValidateFunction) -> Dynamic):js.lib.PromiseLike<ValidateFunction>;
	/**
		Adds schema to the instance.
	**/
	function addSchema(schema:ts.AnyOf2<Dynamic, Array<Dynamic>>, ?key:String):Ajv;
	/**
		Add schema that will be used to validate other schemas
		options in META_IGNORE_OPTIONS are alway set to false
	**/
	function addMetaSchema(schema:Dynamic, ?key:String):Ajv;
	/**
		Validate schema
	**/
	function validateSchema(schema:ts.AnyOf2<Bool, Dynamic>):Bool;
	/**
		Get compiled schema from the instance by `key` or `ref`.
	**/
	function getSchema(keyRef:String):Null<ValidateFunction>;
	/**
		Remove cached schema(s).
		If no parameter is passed all schemas but meta-schemas are removed.
		If RegExp is passed all schemas with key/id matching pattern but meta-schemas are removed.
		Even if schema is referenced by other schemas it still can be removed as other schemas have local references.
	**/
	function removeSchema(?schemaKeyRef:ts.AnyOf4<String, Bool, Dynamic, js.lib.RegExp>):Ajv;
	/**
		Add custom format
	**/
	function addFormat(name:String, format:ts.AnyOf5<String, js.lib.RegExp, (data:String) -> ts.AnyOf2<Bool, js.lib.PromiseLike<Dynamic>>, NumberFormatDefinition, StringFormatDefinition>):Ajv;
	/**
		Define custom keyword
	**/
	function addKeyword(keyword:String, definition:KeywordDefinition):Ajv;
	/**
		Get keyword definition
	**/
	function getKeyword(keyword:String):ts.AnyOf2<Bool, Dynamic>;
	/**
		Remove keyword
	**/
	function removeKeyword(keyword:String):Ajv;
	/**
		Validate keyword
	**/
	function validateKeyword(definition:KeywordDefinition, throwError:Bool):Bool;
	/**
		Convert array of error message objects to string
	**/
	function errorsText(?errors:Array<ErrorObject>, ?options:ErrorsTextOptions):String;
	@:optional
	var errors : Array<ErrorObject>;
	var _opts : Options;
};