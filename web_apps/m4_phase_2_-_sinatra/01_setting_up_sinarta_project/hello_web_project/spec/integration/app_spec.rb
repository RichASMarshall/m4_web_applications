require "spec_helper"
require "rack/test"
require_relative "../../app"

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context "POST /sort-names" do
    it 'should return "Alice,Joe,Julia,Kieran,Zoe"' do
      # Send a GET request to /
      # and returns a response object we can test.
      response = post("/sort-names?names=Joe,Alice,Zoe,Julia,Kieran")

      # Assert the response status code and body.
      expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
    end
  end
end

# My Answer below - Exercise_1 03_test_driving_a_route:
# context 'POST /sort-names' do
#     it 'should return "Alice,Joe,Julia,Kieran,Zoe"' do
#         # Send a GET request to /
#         # and returns a response object we can test.
#         response = post('/sort-names?names=Joe,Alice,Zoe,Julia,Kieran')

#         # Assert the response status code and body.
#         expect(response.status).to eq(200)
#         expect(response.body).to eq('Alice,Joe,Julia,Kieran,Zoe')
#     end
# end
# My Answer End.

# My Answer below - Exercise_1 03_test_driving_a_route:
# context 'GET /names' do
#     it 'should return "Julia, Mary, Karim"' do
#         # Send a GET request to /
#         # and returns a response object we can test.
#         response = get('/names?names=Julia, Mary, Karim')

#         # Assert the response status code and body.
#         expect(response.status).to eq(200)
#         expect(response.body).to eq('Julia, Mary, Karim')
#     end
# end
# My Answer End.

# Emamples of working code for 02_building_a_route - Demonstration.
# Get /
# context 'GET /hello' do
#     it 'should return "Hello Rich"' do
#         # Send a GET request to /
#         # and returns a response object we can test.
#         response = get('/hello?name=Rich')

#         # Assert the response status code and body.
#         expect(response.status).to eq(200)
#         expect(response.body).to eq('Hello Rich')
#     end

#     it 'should return "Hello Victoria"' do
#         # Send a GET request to /
#         # and returns a response object we can test.
#         response = get('/hello?name=Victoria')

#         # Assert the response status code and body.
#         expect(response.status).to eq(200)
#         expect(response.body).to eq('Hello Victoria')
#     end
# end

# Emamples of working code for 02_building_a_route - Challenge.
# context "POST to /submit" do
#     it "returns 200 OK with the right content" do
#         # Send a POST request to /submit
#         # with some body parameters
#         # and returns a response object we can test.
#         response = post("/submit", name: "Dana", some_other_param: 12)

#         # Assert the response status code and body.
#         expect(response.status).to eq(200)
#         expect(response.body).to eq("Hello Dana")
#     end
# end
