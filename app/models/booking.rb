class Booking < ApplicationRecord
  belongs_to :user

  def past_bookings(user_id)
    booking = Booking.where(user_id: user_id)
    date = booking.date

    # @past_bookings = Booking.all.where(date < Time.now)
  end
end
