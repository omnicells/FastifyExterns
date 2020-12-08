package ajv.ajverrors;

@jsInaccessible extern class ValidationError extends js.lib.Error {
	function new(errors:Array<ajv.ErrorObject>);
	var errors : Array<ajv.ErrorObject>;
	var ajv : Bool;
	var validation : Bool;
	static var prototype : ValidationError;
}