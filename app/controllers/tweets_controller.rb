class TweetsController < ApplicationController

  get '/tweets' do
    erb :'/tweets/index'
  end

  get '/tweets/new' do
    @tweet = Tweet.new(params[:id])
    erb :create_tweet
  end

  post '/tweets' do
  end

  get '/tweets/:id' do
    erb :show_tweet
  end

  get '/tweets/:id/edit' do
    erb :edit_tweet
  end

  post '/tweets/:id' do
  end
  
end
