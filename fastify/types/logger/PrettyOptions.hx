package fastify.types.logger;

typedef PrettyOptions = {
	/**
		Translate the epoch time value into a human readable date and time string.
		This flag also can set the format string to apply when translating the date to human readable format.
		The default format is yyyy-mm-dd HH:MM:ss.l o in UTC.
		For a list of available pattern letters see the {@link https://www.npmjs.com/package/dateformat|dateformat documentation}.
	**/
	@:optional
	var translateTime : ts.AnyOf2<String, Bool>;
	/**
		If set to true, it will print the name of the log level as the first field in the log line. Default: `false`.
	**/
	@:optional
	var levelFirst : Bool;
	/**
		The key in the JSON object to use as the highlighted message. Default: "msg".
	**/
	@:optional
	var messageKey : String;
	/**
		The key in the JSON object to use for timestamp display. Default: "time".
	**/
	@:optional
	var timestampKey : String;
	/**
		Format output of message, e.g. {level} - {pid} will output message: INFO - 1123 Default: `false`.
	**/
	@:optional
	var messageFormat : ts.AnyOf2<String, Bool>;
	/**
		If set to true, will add color information to the formatted output message. Default: `false`.
	**/
	@:optional
	var colorize : Bool;
	/**
		Appends carriage return and line feed, instead of just a line feed, to the formatted log line.
	**/
	@:optional
	var crlf : Bool;
	/**
		Define the log keys that are associated with error like objects. Default: ["err", "error"]
	**/
	@:optional
	var errorLikeObjectKeys : Array<String>;
	/**
		When formatting an error object, display this list of properties.
		The list should be a comma separated list of properties. Default: ''
	**/
	@:optional
	var errorProps : String;
	/**
		Specify a search pattern according to {@link http://jmespath.org|jmespath}
	**/
	@:optional
	var search : String;
	/**
		Ignore one or several keys. Example: "time,hostname"
	**/
	@:optional
	var ignore : String;
	/**
		Suppress warning on first synchronous flushing.
	**/
	@:optional
	var suppressFlushSyncWarning : Bool;
};