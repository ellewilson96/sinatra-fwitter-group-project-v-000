class UsersController < ApplicationController

  get '/users/signup' do
   erb :'/users/signup'
 end

 post '/users' do
   @user = User.find_by(email: params[:email])
   session[:user_id] = @user.id
   redirect '/tweets/tweets'
 end

 get '/sessions/login' do
   erb :'sessions/login'
 end

 post '/sessions' do
   @user = User.find_by(email: params[:email], password: params[:password])
   if @user
     session[:user_id] = @user.id
     redirect '/tweets/tweets'
   end
   redirect '/sessions/login'
 end

 get '/sessions/logout' do
   redirect '/'
 end

 get '/users/home' do
   @user = User.find(session[:user_id])
   erb :'/users/home'
 end

end
