package ajv;

typedef ComparisonParams = {
	var comparison : String;
	var limit : ts.AnyOf2<String, Float>;
	var exclusive : Bool;
};