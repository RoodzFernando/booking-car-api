# frozen_string_literal: true

# user_model
class User < ApplicationRecord
  before_save { username.downcase! }
  has_secure_password
  validates_uniqueness_of :username
  validates :username, presence: true, length: { in: 6..10 }
  validates :password, confirmation: true, presence: true, length: { in: 6..10 }

  has_many :appointments
  has_many :cars, through: :appointments
end
