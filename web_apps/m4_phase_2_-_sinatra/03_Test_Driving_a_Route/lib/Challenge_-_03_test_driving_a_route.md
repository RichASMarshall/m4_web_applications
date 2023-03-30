## Challenge
This is a process feedback challenge. That means you should record yourself doing it and submit that recording to your coach for feedback. How do I do this?

Test-drive a new route POST /sort-names which receives a list of names (as a comma-separated string) and return the same list, sorted in alphabetical order.

Here's a description of the expected behaviour:

# Request:
POST http://localhost:9292/sort-names

# With body parameters:
names=Joe,Alice,Zoe,Julia,Kieran

# Expected response (sorted list of names):
Alice,Joe,Julia,Kieran,Zoe



# My Answer:
# Filename - app.rb
```ruby
require 'sinatra/base'

class Application < Sinatra::Base
    post '/sort-names' do
        names = params[:names]

        "#{names.gsub(",", " ").split().sort.join(",")}"
    end
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

    context 'POST /sort-names' do
        it 'should return "Alice,Joe,Julia,Kieran,Zoe"' do
        # Send a GET request to /
        # and returns a response object we can test.
        response = post('/sort-names?names=Joe,Alice,Zoe,Julia,Kieran')

        # Assert the response status code and body.
        expect(response.body).to eq('Alice,Joe,Julia,Kieran,Zoe')
        end
    end
end
```

Postman:
POST http://localhost:9292/sort-names
Body Parameters:
    form-data:
        Key:    names
        Value:  Joe,Alice,Zoe,Julia,Kieran
# My Answer End.
