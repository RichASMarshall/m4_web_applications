# # What the document is showing us below:
# require 'sinatra/base'
# require 'sinatra/reloader'

# class Application < Sinatra::Base
# #   # This allows the app code to refresh
# #   # without having to restart the server.
#     configure :development do
#         register Sinatra::Reloader
#     end
# end
# # My End.

#What the video is showing us below:
require "sinatra/base"

class Application < Sinatra::Base
  post "/sort-names" do
    names = params[:names]

    "#{names.gsub(",", " ").split().sort.join(",")}"
  end
end

# My Answer Below - Challenge - 03_Test_Driving_a_Route:
# post '/sort-names' do
#     names = params[:names]

#     "#{names.gsub(",", " ").split().sort.join(",")}"
# end
# My Answer End.

# My Answer Below - Exercise_1 - 03_Test_Driving_a_Route:
# get '/names' do
#     name = params[:names]

#     return "Julia, Mary, Karim"
# end
# My Answer End.

# GET /
# Get / above can be said in other ways, such as, Root path (homepage, idnex page)

# First Step Demonstration.
# get '/' do
#     return 'Hello!'
# end

# Secord step Demonstration.
# get '/hello' do

#     return 'Hello Rich'
# end

# Third step Demonstration
# Remember to remove the (x) next to the (it) in the second test in app_spec.rb.
# get '/hello' do
#     name = params[:name]

#     return "Hello #{name}"
# end

# My Execise_1_-_02_building_a_route Answer Below:
# get '/hello' do
#     name = params[:name]

#     return "Hello #{name}"
# end
# My End.

# My Challenge_-_02_building_a_route Answer Below:
# post '/submit' do
#     name = params[:name]
#     message = params[:message]

#     return "Thanks #{name}, you sent this message: #{message}"
# end
# My End.

# get '/posts' do
#     name = params[:name]
#     cohort_name = params[:cohort_name]

#     p name
#     p cohort_name

#     return "Hello #{name}, you are in the cohort named #{cohort_name}."
# end

# post '/posts' do
#     title = params[:title]

#     return "Post was created with title: #{title}."
# end

# Incoming request: GET /todos/1

# Routes

# GET /         -> execute some code

# GET /todos/1  -> execute some differnt piece of code

# POST /todos   -> execute some differnt code

# TO START A QUERY STRING USE AN (?)
# My Example Below:
# http://localhost:9292/posts?name=Rich&cohort_name=Feb
# My End.
