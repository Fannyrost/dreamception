class User < ApplicationRecord
  has_many :bookings
  has_many :lived_experiences, through: :bookings, source: :experience, class_name: 'Experience'
  has_many :experiences
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
