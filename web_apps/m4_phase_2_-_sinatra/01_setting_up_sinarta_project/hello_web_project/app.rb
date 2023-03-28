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
require 'sinatra/base'

class Application < Sinatra::Base
    
    post '/submit' do
        name = params[:name]
        message = params[:message]

        return "Thanks #{name}, you sent this message: #{message}"
    end
    
    # Execise_1 Below:
    # get '/hello' do
    #     name = params[:name]

    #     return "Hello #{name}"
    # end
    # My End.
    
    # GET /
    # Root path (homepage, inex page)
    # get '/' do
    #     return 'Hello!'
    # end

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
end

# Incoming request: GET /todos/1

# Routes

# GET /         -> execute some code

# GET /todos/1  -> execute some differnt piece of code

# POST /todos   -> execute some differnt code


# TO START A QUERY STRING USE A ?
# Example below:
# http://localhost:9292/posts?name=Rich&cohort_name=Feb
# My End.