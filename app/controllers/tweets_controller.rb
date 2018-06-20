class TweetsController < ApplicationController
  get '/tweets' do
    if logged_in?
      @tweets = Tweet.all
      erb :'tweets/tweets'
    else
      redirect to '/login'
    end
  end

  get '/tweets/new' do
    if logged_in?
      erb :'tweets/create_tweet'
    else
      redirect to '/login'
    end
  end

  post '/tweets' do
    @tweet = Tweet.create(params[:tweet])
    if !params["user"]["username"].empty?
      @tweet.user = User.create(username: params["user"]["username"])
    end
    @tweet.save
    redirect "users/#{@user.id}"
  end

  get '/tweets/:id' do
    @tweet = Tweet.find(params[:id])
    erb :'/tweets/show_tweet'
  end

  get '/tweets/:id/edit' do
    @tweet = Tweer.find(params[:id])
    erb :'/tweets/edit_tweet'
  end

  post '/tweets/:id' do
    @tweet = Tweet.find(params[:id])
    @tweet.update(params["tweet"])
    if !params["user"]["username"].empty?
      @tweet.user = User.create(username: params["user"]["username"])
    end
    @tweet.save
    redirect "tweets/#{@tweet.id}"
  end

end
