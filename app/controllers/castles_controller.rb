class CastlesController < ApplicationController
  def index
    @castles = Castle.all
  end

  def show
    @castle = Castle.find(params[:id])

    @marker = {
        lat: @castle.latitude,
        lng: @castle.longitude
      }
  end

  def new
    @castle = Castle.new
  end

  def create
    castle = Castle.new(castle_params)
    castle.user = current_user if user_signed_in?
    if castle.save
      redirect_to castle_path(castle)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :location, :description, :price, photos: [])
  end
end
