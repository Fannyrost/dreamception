class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_one_attached :photo

  scope :online, -> { where(is_online: true) }

  validates :category, presence: true, inclusion: { in: ["sciences fiction", "histoire", "sensations", "insolite"] }
end
