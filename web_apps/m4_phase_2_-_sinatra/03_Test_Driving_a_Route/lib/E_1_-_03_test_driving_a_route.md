## Exercise
Work in the same project directory hello_web_project for the following exercises.

Use the Design recipe to test-drive the following route:

# Request:
GET /names

# Expected response (2OO OK):
Julia, Mary, Karim
You should assert that the response status code is 200 and that the response body is the correct string.



# My Answer:
# filename - app.rb
```ruby
require 'sinatra/base'

class Application < Sinatra::Base
    
    get '/names' do
        name = params[:names]

        return "Julia, Mary, Karim"
    end
```

# Filename - app_spec.rb
```ruby
require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
    # This is so we can use rack-test helper methods.
    include Rack::Test::Methods

    # We need to declare the `app` value by instantiating the Application
    # class so our tests work.
    let(:app) { Application.new }

    context 'GET /names' do
        it 'should return "Julia, Mary, Karim"' do
            # Send a GET request to /
            # and returns a response object we can test.
            response = get('/names?names=Julia, Mary, Karim')

            # Assert the response status code and body.
            expect(response.status).to eq(200)
            expect(response.body).to eq('Julia, Mary, Karim')
        end
    end
end
```
# My Answer End.