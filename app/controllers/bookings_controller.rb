class BookingsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @booking = Booking.new
  end
end
