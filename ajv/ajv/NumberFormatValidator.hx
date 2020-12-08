package ajv;

typedef NumberFormatValidator = (data:Float) -> ts.AnyOf2<Bool, js.lib.PromiseLike<Dynamic>>;