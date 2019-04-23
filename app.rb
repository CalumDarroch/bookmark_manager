require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :'bookmarks/index'
  end

  get '/bookmarks' do
    @bookmark_list = Bookmarks.new.all
    erb :bookmarks
  end

  run! if app_file == $0
end
