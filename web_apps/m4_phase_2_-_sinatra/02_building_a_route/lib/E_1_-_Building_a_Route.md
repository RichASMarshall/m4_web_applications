## Exercise

Work through the following in the project `hello_web_project`.

Create a new route that responds to requests sent with:
  * A method `GET`
  * A path `/hello`
  
It should return the text `'Hello [NAME]'`, where `[NAME]` is replaced by the value of the `name` _query parameter_.


```
# Request:
GET /hello?name=Leo

# Expected response (200 OK):
Hello Leo
```


Make sure your server is running - then, using Postman, check the route is working.

[Solution](https://www.youtube.com/watch?v=iCMsemJVbqo&t=1106s)


My Answer.
```ruby
require 'sinatra/base'

class Application < Sinatra::Base
    
    get '/hello' do
        name = params[:name]

        return "Hello #{name}"
    end
end
```
My End.
