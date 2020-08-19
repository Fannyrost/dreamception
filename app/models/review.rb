class Review < ApplicationRecord
  belongs_to :experience
  has_one :user, through: :experience
end
