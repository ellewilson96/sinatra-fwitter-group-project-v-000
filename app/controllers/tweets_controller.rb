class TweetsController < ApplicationController

  get '/tweets' do

  end

  get '/tweets/new' do
    @tweet = Tweet.new(params[:id])
    erb :create_tweet
  end

  post '/tweets' do
  end
end
