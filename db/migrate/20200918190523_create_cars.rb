# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength

# create_cars
class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :model_year
      t.string :image_url
      t.string :price
      t.string :consommation
      t.string :description
      t.string :power
      t.string :motor
      t.string :slug

      t.timestamps
    end
  end
end

# rubocop:enable Metrics/MethodLength
