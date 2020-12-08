package ajv;

typedef CompilationContext = {
	var level : Float;
	var dataLevel : Float;
	var dataPathArr : Array<String>;
	var schema : Dynamic;
	var schemaPath : String;
	var baseId : String;
	var async : Bool;
	var opts : Options;
	var formats : { };
	var keywords : { };
	var compositeRule : Bool;
	dynamic function validate(schema:Dynamic):Bool;
	var util : {
		function copy(obj:Dynamic, ?target:Dynamic):Dynamic;
		function toHash(source:Array<String>):{ };
		function equal(obj:Dynamic, target:Dynamic):Bool;
		function getProperty(str:String):String;
		function schemaHasRules(schema:Dynamic, rules:Dynamic):String;
		function escapeQuotes(str:String):String;
		function toQuotedString(str:String):String;
		function getData(jsonPointer:String, dataLevel:Float, paths:Array<String>):String;
		function escapeJsonPointer(str:String):String;
		function unescapeJsonPointer(str:String):String;
		function escapeFragment(str:String):String;
		function unescapeFragment(str:String):String;
	};
	var self : Ajv;
};