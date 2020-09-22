class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car

  # def self.user_appointments(user_id)
        
  # end
end
