## The `config.ru` file

# We will later use the command `rackup` to "run" the web server. That command comes built-in with the `webrick` gem we installed earlier. By running it, our Sinatra application will run continuously in a terminal, waiting to receive HTTP requests, just like a "real" web server would.

# To know how to run the Sinatra application class, it needs a few lines of configuration of the file `config.ru` — let's add this now.

# file: config.ru
require './app'
run Application
