@:jsRequire("ajv") extern class Ajv {
	function new(?options:ajv.Options);
	static var value(get, never) : {
		@:selfCall
		function call(?options:ajv.Options):ajv.Ajv;
		var ValidationError : {
			var prototype : ajv.ajverrors.ValidationError;
		};
		var MissingRefError : {
			var prototype : ajv.ajverrors.MissingRefError;
			dynamic function message(baseId:String, ref:String):String;
		};
		@:native("$dataMetaSchema")
		var DollarDataMetaSchema : Dynamic;
	};
	static inline function get_value():{
		@:selfCall
		function call(?options:ajv.Options):ajv.Ajv;
		var ValidationError : {
			var prototype : ajv.ajverrors.ValidationError;
		};
		var MissingRefError : {
			var prototype : ajv.ajverrors.MissingRefError;
			dynamic function message(baseId:String, ref:String):String;
		};
		@:native("$dataMetaSchema")
		var DollarDataMetaSchema : Dynamic;
	} return cast Ajv;
	@:selfCall
	static function call(?options:ajv.Options):ajv.Ajv;
	static var ValidationError : {
		var prototype : ajv.ajverrors.ValidationError;
	};
	static var MissingRefError : {
		var prototype : ajv.ajverrors.MissingRefError;
		dynamic function message(baseId:String, ref:String):String;
	};
	@:native("$dataMetaSchema")
	static var DollarDataMetaSchema : Dynamic;
}