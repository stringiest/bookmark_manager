require 'sinatra/base'

class BookmarkManager < Sinatra::Application

  get '/' do
      "Bookmark Manager"
    end



# start the server if ruby file executed directly
  run! if app_file == $0
end
