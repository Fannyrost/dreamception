class Booking < ApplicationRecord
  belongs_to :visitor
  belongs_to :experience
end
