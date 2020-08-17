class Visitor < ApplicationRecord
  has_many :bookings
  has_many :experiences, through: :bookings

end
