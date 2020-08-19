class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews

  validates :category, presence: true, inclusion: { in: ["sciences fiction", "histoire", "sensations", "insolite"] }
end
