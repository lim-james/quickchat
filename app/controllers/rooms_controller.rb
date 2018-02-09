class RoomsController < ApplicationController
  def index
    @room = Room.new
  end

  def create
    rooms = Room.all

    room_params = params[:room].permit(:name) 
    if rooms.exists? name: params[:room][:name]
      room = Room.find_by name: params[:room][:name]
    else
      room = Room.create room_params 
    end

    if room.id
      redirect_to users_path 
      session[:room_id] = room.id
    else
      redirect_to root_path
    end
  end
end
