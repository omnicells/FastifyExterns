package fastify;

typedef DoneFuncWithErrOrRes = ts.AnyOf3<() -> Void, (err:Any) -> Void, (err:Dynamic, res:Any) -> Void>;