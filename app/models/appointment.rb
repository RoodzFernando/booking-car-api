class Appointment < ApplicationRecord
  belongs_to :car
  belongs_to :user
  has_many :cars
end
