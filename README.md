# Ruby UAParser

Ruby UAParser is a bridge to  [UAParser.js](https://github.com/faisalman/ua-parser-js)

## Installation

```
gem install ua_parser
```

## Dependencies
This library vendors in a local copy of UAParser.js. You can use this library with any future versions of UAParser.js by setting the `UA_PARSER_SOURCE_PATH` environment variable:

```bash
export UA_PARSER_SOURCE_PATH=/path/to/ua-parser-js/dist/ua-parser.js
```

### ExecJS

The [ExecJS](https://github.com/sstephenson/execjs) library is used to automatically choose the best JavaScript engine for your platform. Check out its [README](https://github.com/sstephenson/execjs/blob/master/README.md) for a complete list of supported engines.

## Usage

See https://github.com/faisalman/ua-parser-js for full usage information.

### Parsing a user agent

Given the following user agent...

```ruby
user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36"
```

You can produce the following...

```ruby
UAParser.parse(user_agent)
```
Which produces the following object and hash

```ruby
@user_agent_results=
  {"ua"=>
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36",
   "browser"=>{"name"=>"Chrome", "version"=>"55.0.2883.75", "major"=>"55"},
   "engine"=>{"version"=>"537.36", "name"=>"WebKit"},
   "os"=>{"name"=>"Mac OS", "version"=>"10.12.1"},
   "device"=>{},
   "cpu"=>{}}>
```

### Methods
For the sake of convenience you can call the following methods

```ruby
user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36"

result = UAParser.parse(user_agent)

result.os.name
# => "Mac OS"

result.os.version
# => "10.12.1"

result.browser.name
# => Chrome

result.browser.version
# => 55.0.2883.75

result.browser.major
# => 55

result.engine.name
# => Webkit

result.engine.version
# => 537.36
```
