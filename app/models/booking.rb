class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  validate :number_of_person

  def number_of_person
    @experience = Experience.find(params[:experience_id])
    if nb_of_person > @experience.nb_max_of_persons
      errors.add(:nb_of_persons, "trop de monde ")
    end
  end

  def self.past_bookings
    @past_bookings = Booking.all.where('date < ?', DateTime.current)
  end

  def self.next_bookings
    @next_bookings = Booking.all.where('date > ?', DateTime.current)
  end
end
