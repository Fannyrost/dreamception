class Booking < ApplicationRecord
  belongs_to :user

  def past_bookings
    @past_bookings = Booking.all.where('date < ?', DateTime.current)
  end
end
