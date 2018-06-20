class UsersController < ApplicationController

  get '/users/create_user' do
    erb :signup
  end

  post '/users/create_user' do
  end


end
