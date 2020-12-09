# Working Haxe Externs for fastify

Generated from **[fastify v3.8.0](https://www.fastify.io/)** by **[dts2hx](https://github.com/haxiomic/dts2hx) 0.15.3** using **TypeScript 3.7.4** with arguments:

	dts2hx fastify

## Dependencies (included)
- light-my-request
- ajv
- fastify-error

## Contributors to fastify
- [Tomas Della Vedova](http://delved.org)
Tommaso Allevi
- [Ethan Arrowood](https://github.com/Ethan-Arrowood)
- [Dustin Deus](http://starptech.de)
- [Rafael Gonzaga](https://github.com/rafaelgss)
- [Trivikram Kamat](http://trivikr.github.io)
- [Luciano Mammino](https://loige.co)
Cemre Mengu
Evan Shortiss
- [Maksim Sinik](https://maksim.dev)
Manuel Spigolon
- [James Sumners](https://james.sumners.info)
- [Denis Fäcke](https://github.com/SerayaEryn)
- [Igor Savin](https://github.com/kibertoad)
- [Vincent Le Goff](https://github.com/zekth)
## Usage
I was having problems with the automatically generated verisons of externs that dts2hx provides, after some testing I finally found externs that worked and with a little bit of tweaking got it fully working almost identical syntax wise to actual fastify examples can be shown here. 
```Haxe
import Fastify; 

class Main
{
    public static var port = 9000;

    static function main() {
	new Main();
    }
    
    public function new() { 
	server.get('/', function(request, response) {
		response.header('Access-Control-Allow-Origin', '*');
		response.code(200); 
		response.send("fastify"); 
		return null; 
	});
    	server.listen(port, "127.0.0.1", function(error, address) {
            	if (error != null) {
			trace('failed to listen on port $port'); 
			Sys.exit(null);
            	}
		trace('listening on port $port'); 
        });
    }
}
```
Hxml file: 
```Haxe
-D js-es=6
-cp externs/FastifyExterns
-cp externs/FastifyExterns/lmr
-cp externs/FastifyExterns/ajv
-main Main
```
