# frozen_string_literal: true

# appointment_model
class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates_presence_of :city, :date, :user_id, :car_id

  def self.user_appointment(user_id)
    data = "SELECT make, model, city, date from cars
                    INNER JOIN appointments ON
                    cars.id = appointments.car_id
                    WHERE appointments.user_id = #{user_id.id}
                    ORDER BY appointments.date DESC"
    ActiveRecord::Base.connection.execute(data)
  end
end
