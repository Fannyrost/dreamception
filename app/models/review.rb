class Review < ApplicationRecord
  belongs_to :experience
  belongs_to :user

  validate :user_assisted

  def user_assisted
    unless user.lived_experiences.include?(experience)
      errors.add(:user_id)
    end
  end
end
