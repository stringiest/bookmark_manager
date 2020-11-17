require 'sinatra/base'
require './lib/bookmark'


class BookmarkManager < Sinatra::Application

  get '/' do
    "Bookmark Manager"
    # erb :bookmarks
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end


# start the server if ruby file executed directly
  run! if app_file == $0
end
