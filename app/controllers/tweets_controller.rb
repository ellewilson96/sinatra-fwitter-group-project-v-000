class TweetsController < ApplicationController

  get '/tweets' do
    @tweets = Tweet.all
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

  post '/tweets/:id/delete' do
    erb :delete
  end
end
