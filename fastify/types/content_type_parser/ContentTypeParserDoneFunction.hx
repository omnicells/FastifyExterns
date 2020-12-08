package fastify.types.content_type_parser;

typedef ContentTypeParserDoneFunction = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, body:Dynamic) -> Void>;