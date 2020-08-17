class Experience < ApplicationRecord
  belongs_to :seller
  has_many :bookings

end
