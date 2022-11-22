class BookingsController < ApplicationController
  def new
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new
  end

  def create
    castle = Castle.find(params[:castle_id])
    booking = Booking.new(booking_params)
    booking.castle = castle
    booking.user = current_user if user_signed_in?
    if booking.save
      redirect_to castle_path(booking.castle)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @castle = Castle.find(params[:castle_id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @castle = Castle.find(params[:castle_id])
    redirect_to castle_path(@castle)
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :date_from, :date_to, :user_id, :castle_id, :accepted)
  end
end
