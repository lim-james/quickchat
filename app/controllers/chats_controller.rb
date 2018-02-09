class ChatsController < ApplicationController
  def index
    @room = Room.find session[:room_id]
    @user = User.find session[:user_id]
    @chats = @room.chats.all

    @chat = @room.chats.new
  end

  def create
    room = Room.find session[:room_id]
    user = User.find session[:user_id]

    room.chats.create! sender: user.name, content: params[:chat][:content]
    redirect_to chats_path
  end
end
