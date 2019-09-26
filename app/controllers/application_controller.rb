
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect to '/articles'
  end

  get '/articles' do
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    article = Article.create(title:params[:title], content:params[:content])
    redirect to "/articles/#{article.id}"
  end

  get '/articles/:id' do
    erb :show
  end

  get '/articles/:id/edit' do
    erb :edit
  end
end
