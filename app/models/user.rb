class User < ApplicationRecord
  before_save { username.downcase! }
  has_secure_password
  validates_presence_of :username, :password
  validates_uniqueness_of :username

  has_many :appointments
  has_many :cars, through: :appointments

end
