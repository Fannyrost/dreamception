class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  def self.past_bookings
    @past_bookings = Booking.all.where('date < ?', DateTime.current)
  end

  def self.next_bookings
    @next_bookings = Booking.all.where('date > ?', DateTime.current)
  end
end
