package ajv;

typedef CustomLogger = {
	function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	function error(args:haxe.extern.Rest<Dynamic>):Dynamic;
};