class TweetsController < ApplicationController

  get '/tweets' do
  end
  
  get '/tweets/new' do
    @tweet = Tweet.new(params)
  end

  post '/tweets' do
  end
end
