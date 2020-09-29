# frozen_string_literal: true

# rubocop:disable Metrics/LineLength

# car_model
class Car < ApplicationRecord
  before_create :slugify
  has_many :appointments
  has_many :users, through: :appointments
  validates_presence_of :make, :model, :model_year, :image_url, :price, :consommation, :description, :power, :motor
  def slugify
    self.slug = "#{make}-#{model.parameterize}"
  end
end

# rubocop:enable Metrics/LineLength
