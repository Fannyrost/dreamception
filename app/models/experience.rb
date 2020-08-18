class Experience < ApplicationRecord
  belongs_to :user

  validates :category, presence: true, inclusion: { in: ["sciences fiction", "histoire", "sensations", "insolite"] }

end
