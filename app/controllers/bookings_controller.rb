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
    if booking.save!
      redirect_to castle_booking_path(castle, booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.find(params[:id])
  end

  def edit
  end

  def update
  end

  def confirm!
    @booking = Booking.find(params[:id])
    @booking.accepted = true
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :date_from, :date_to, :user_id, :castle_id)
  end
end
