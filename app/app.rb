require 'sinatra/base'
require_relative 'models/bookmark'

class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Bookmark.all
    erb :'links/index'
  end

  get '/links/new' do
  	erb :'links/new'
  end

   post '/links' do
     Bookmark.create(url: params[:url], name: params[:name])
     redirect to('/links')
   end

  run! if app_file == $0
end
