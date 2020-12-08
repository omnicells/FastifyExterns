package light_my_request;

typedef Request = {
	var url : String;
	var httpVersion : String;
	var method : HTTPMethods;
	var headers : Dynamic;
	dynamic function prepare(next:() -> Void):Void;
	var connection : Dynamic;
};