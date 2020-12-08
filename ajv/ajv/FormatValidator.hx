package ajv;

typedef FormatValidator = ts.AnyOf3<String, js.lib.RegExp, (data:String) -> ts.AnyOf2<Bool, js.lib.PromiseLike<Dynamic>>>;