class Booking < ApplicationRecord
  belongs_to :visitor
  belongs_to :experience, dependent: :detroy
end
