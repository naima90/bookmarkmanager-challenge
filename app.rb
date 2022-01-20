require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  
  get '/bookmarks' do
    p params
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    p params
    erb :'/bookmarks/new'
  end

  post '/bookmarks' do
    p params
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end
  
  run! if app_file == $0
end
  