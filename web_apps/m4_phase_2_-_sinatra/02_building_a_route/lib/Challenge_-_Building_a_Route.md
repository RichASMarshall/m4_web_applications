## Challenge
Work through the following in the project hello_web_project.

Create a new route that responds to requests sent with:

A method POST
A path /submit
Here's the expected behaviour of this route:

# Request:
POST /submit

# With body parameters:
name=Leo
message=Hello world

# Expected response (2OO OK):
Thanks Leo, you sent this message: "Hello world"
Make sure your server is running - then, using Postman, check the route is working.



My Answer
```ruby
require 'sinatra/base'

class Application < Sinatra::Base
    
    post '/submit' do
        name = params[:name]
        message = params[:message]

        return "Thanks #{name}, you sent this message: #{message}"
    end
end
```
My End.
