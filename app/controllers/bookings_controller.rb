class BookingsController < ApplicationController
  def new
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
  end
end
