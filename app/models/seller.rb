class Seller < ApplicationRecord
  has_many :experiences
  has_many :bookings, through: :experiences
end
