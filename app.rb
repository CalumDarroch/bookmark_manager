require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :'bookmarks/index'
  end

  get '/bookmarks' do
    @bookmark_list = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
