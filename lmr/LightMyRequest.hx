@:jsRequire("light-my-request") @valueModuleOnly extern class LightMyRequest {
	@:overload(function(dispatchFunc:light_my_request.DispatchFunc, options:ts.AnyOf2<String, light_my_request.InjectOptions>, callback:light_my_request.CallbackFunc):Void { })
	static function inject(dispatchFunc:light_my_request.DispatchFunc, ?options:ts.AnyOf2<String, light_my_request.InjectOptions>):light_my_request.Chain;
	static function isInjection(obj:ts.AnyOf2<light_my_request.Request, light_my_request.Response>):Bool;
}