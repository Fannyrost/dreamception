class BookingsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def new
    @booking = Booking.new
  end
end
