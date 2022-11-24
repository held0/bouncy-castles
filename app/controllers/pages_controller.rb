class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def dashboard
    @mycastles = Castle.where(user: current_user)
    @incomming_bookings = Booking.where(castle: @mycastles).and(Booking.where.not(user: current_user))
    @mybookings = Booking.where(user: current_user)
  end
end
