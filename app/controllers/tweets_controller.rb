class TweetsController < ApplicationController

  get '/tweets' do
    @user = User.find(session[:user_id])

    @tweets = Tweet.all
    erb :'/tweets/tweets'
  end

  get '/tweets/new' do
    @users = User.all
    erb :'/tweets/create_tweet'
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
