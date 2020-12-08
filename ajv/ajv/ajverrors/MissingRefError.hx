package ajv.ajverrors;

@jsInaccessible extern class MissingRefError extends js.lib.Error {
	function new(baseId:String, ref:String, ?message:String);
	var missingRef : String;
	var missingSchema : String;
	static var prototype : MissingRefError;
	static dynamic function message(baseId:String, ref:String):String;
}