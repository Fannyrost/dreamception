class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_one_attached :photo

  scope :online, -> { where(is_online: true) }

  validates :category, presence: true, inclusion: { in: ["sciences fiction", "histoire", "sensations", "insolite"] }

  def avg_rating
    if self.reviews.length > 0
      ratings = []
      review = self.reviews
      review.each do |review|
        ratings << review.rating
      end
      avg = ratings.sum/ ratings.length
      avg
    else
      "Y a po"
    end
  end

end
