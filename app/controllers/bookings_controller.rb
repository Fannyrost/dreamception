class BookingsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  # def new
  #   @experience = Experience.find(params[:experience_id])
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new(booking_params)
    @experience = Experience.find(params[:experience_id])
    @booking.experience_id = @experience.id
    @booking.user = current_user

    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :total_price, :nb_of_persons)
  end
end
