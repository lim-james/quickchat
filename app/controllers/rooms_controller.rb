class RoomsController < ApplicationController
  def index
    @room = Room.new
  end

  def create
    room_params = params[:room].permit(:name) 
    Room.create room_params
    redirect_to root_path
  end
end
