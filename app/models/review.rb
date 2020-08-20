class Review < ApplicationRecord
  belongs_to :experience
  belongs_to :user
  has_one :user, through: :experience
end
