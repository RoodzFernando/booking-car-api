class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates_presence_of :city, :date, :user_id, :car_id
end
