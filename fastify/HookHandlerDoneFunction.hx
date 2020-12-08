package fastify;

typedef HookHandlerDoneFunction = ts.AnyOf2<() -> Void, (err:Any) -> Void>;