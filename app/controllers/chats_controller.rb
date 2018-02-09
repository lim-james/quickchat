class ChatsController < ApplicationController
  def index
    @room = Room.find session[:room_id]
    @user = User.find session[:user_id]
    @chats = @room.chats.where("room_id = ? and created_at > ?", params[:room_id], Time.at(params[:after].to_i + 1))

    @chat = @room.chats.new
  end

  def create
    room = Room.find session[:room_id]
    user = User.find session[:user_id]

    room.chats.create! sender: user.name, content: params[:chat][:content]
  end
end
