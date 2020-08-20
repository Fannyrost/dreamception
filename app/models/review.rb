class Review < ApplicationRecord
  belongs_to :experience
  belongs_to :user

  validate :user_assisted

  def user_assisted
    if user != experience.user
      errors.add(:user_id)
    end
  end
end
