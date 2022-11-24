class CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @castles = Castle.all
    @markers = @castles.geocoded.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude,
        info_window: render_to_string(partial: "info_window", locals: {castle: castle})

      }
    end
  end

  def show
    @castle = Castle.find(params[:id])
    castle_arr = [@castle]
    @marker = castle_arr.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude,
        info_window: render_to_string(partial: "info_window", locals: {castle: castle})

      }
    end
    @booking = Booking.new
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

  def edit
    @castle = Castle.find(params[:id])
  end

  def update
    @castle = Castle.find(params[:id])
    @castle.update(castle_params)
    redirect_to castle_path(@castle)
  end

  def destroy
    castle = Castle.find(params[:id])
    castle.destroy
    redirect_to dashboard_path
  end


  private

  def castle_params
    params.require(:castle).permit(:name, :location, :description, :price, photos: [])
  end
end
