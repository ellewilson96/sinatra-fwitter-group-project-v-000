class TweetsController < ApplicationController

  get '/tweets' do
    erb :
  end
  
  get '/tweets/new' do
    @tweet = Tweet.new(params[:id])
  end

  post '/tweets' do
  end
end
