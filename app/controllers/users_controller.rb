class UsersController < ApplicationController
  def index
    @room = Room.find session[:room_id]
    @user = User.new
  end

  def create
    user_params = params[:user].permit(:name)
    user = User.create user_params
    if user.id 
      redirect_to chats_path
      session[:user_id] = user.id
    else
      redirect_to users_path
    end
  end
end
