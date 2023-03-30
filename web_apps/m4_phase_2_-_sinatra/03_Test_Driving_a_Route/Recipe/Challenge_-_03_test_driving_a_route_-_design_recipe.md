# Challenge POST /sort-names Joe,Alice,Zoe,Julia,Kieran Route Design Recipe.

_Copy this design recipe template to test-drive a Sinatra route._



## 1. Design the Route Signature

You'll need to include:
 * the HTTP method
 * the path
 * any query parameters (passed in the URL)
 * or body parameters (passed in the request body)

<!-- # Makers Example:
_Fill the table below with your own design._

|What does it do?|Method|Path|Query parameters?|Body parameters?|
|--|--|--|--|--|
|Get a single post by its ID|`GET`|`/posts?id=1`|`id`|-|
# Makers Example End. -->

# My Changes Below:
|What does it do?|Method|Path|Query parameters?|Body parameters?|
|--|--|--|--|--|

|Return the names Joe,Alice,Zoe,Julia,Kieran
|`POST`|`/sort-names`|-|names=Joe,Alice,Zoe,Julia,Kieran|

Above is the same as below:

Return the names Alice,Joe,Julia,Kieran,Zoe
Method: POST
Path: /sort-names
Body parameters:
	names (a string of) (names=Joe,Alice,Zoe,Julia,Kieran)
# My End.



## 2. Design the Response

<!-- # Makers Example Below:
The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return `200 OK` if the post exists, but `404 Not Found` if the post is not found in the database.

Your response might return plain text, JSON, or HTML code.
# Makers Example End. -->

# My Changed Design.
The route might return different responses, depending on the result.

Looks to pass the rspec tests to show that the challenge has been completed.
# My Changes End.


<!-- # Makers Example:
_Replace the below with your own design. Think of all the different possible responses your route will return._

```html
<!-- EXAMPLE -->
<!-- Response when the post is found: 200 OK -->
<!-- # REMEMBER TO REMOVE THIS COMMENTS MARK TO THE LEFT.
<html>
 <head></head>
 <body>
   <h1>Post title</h1>
   <div>Post content</div>
 </body>
</html>
```
# Makers Example End. -->



# My Changes Below:
Test Response:

When body param `sort-names` is `Joe,Alice,Zoe,Julia,Kieran`
```
The return should be: Alice,Joe,Julia,Kieran,Zoe
```
# My End.



## 3. Write Examples

<!-- # Makers Example Below:
_Replace these with your own design._

```
# Request:

GET /posts?id=1

# Expected response:

Response for 200 OK
```

```
# Request:

GET /posts?id=276278

# Expected response:

Response for 404 Not Found
```
# Makers Example End. -->


# My Changes Below:

```
# Request:

POST /sort-names
Body parameters: names = Joe,Alice,Zoe,Julia,Kieran

# Expected response:
Alice,Joe,Julia,Kieran,Zoe
```
# My End.



## 4. Encode as Tests Examples
<!-- # Makers Example below:
```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /" do
    it 'returns 200 OK' do
      # Assuming the post with id 1 exists.
      response = get('/posts?id=1')

      expect(response.status).to eq(200)
      # expect(response.body).to eq(expected_response)
    end

    it 'returns 404 Not Found' do
      response = get('/posts?id=276278')

      expect(response.status).to eq(404)
      # expect(response.body).to eq(expected_response)
    end
  end
end
```
# Makers Example End. -->

# My Changes Below:
```ruby
# filepath: spec/integration/app_spec.rb

require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  # My Answer below - Exercise_1 03_test_driving_a_route:
  context 'POST /sort-names' do
    it 'should return "Alice,Joe,Julia,Kieran,Zoe"' do
      # Send a GET request to /
      # and returns a response object we can test.
      response = post('/sort-names?names=Joe,Alice,Zoe,Julia,Kieran')

      # Assert the response status code and body.
      expect(response.status).to eq(200)
      expect(response.body).to eq('Alice,Joe,Julia,Kieran,Zoe')
    end
  end
end
```
# My Changes End.



## 5. Implement the Route

Write the route and web server code to implement the route behaviour.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?** 
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😀) 
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->