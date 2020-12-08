package fastify;

/**
	Triggered when a new route is registered. Listeners are passed a routeOptions object as the sole parameter. The interface is synchronous, and, as such, the listener does not get passed a callback
**/
typedef OnRouteHookHandler<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> = (opts:RouteOptions<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig> & { var routePath : String; var path : String; var prefix : String; }) -> ts.AnyOf2<Void, js.lib.Promise<Any>>;