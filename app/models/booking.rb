class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experiences

  validate :number_of_person

  def number_of_person
    @experience = Experience.find(params[:experience_id])
    if nb_of_person > @experience.nb_max_of_persons
      errors.add(:nb_of_persons, "trop de monde ")
    end
  end
end
