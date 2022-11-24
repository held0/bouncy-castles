class CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @castles = Castle.all
    # PgSearch::Multisearch.rebuild()

    @results = PgSearch.multisearch(params[:query])
  end

  def show
    @castle = Castle.find(params[:id])
    @booking = Booking.new

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
