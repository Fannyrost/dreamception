class BookingsController < ApplicationController
<<<<<<< HEAD
  def new
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @experience = Experience.find(params[:experience_id])
    @booking.experience_id = @experience.id
    @booking.user = current_user
      if @booking.save
        redirect_to user_path(@user)
      else
        render :new
      end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :total_price, :nb_of_persons)
  end

=======
  before_action :authenticate_user!, except: [:show, :index]
  def new
    @booking = Booking.new
  end
>>>>>>> d124a5218fd9c099f72ef415c1ef688cf465c929
end
