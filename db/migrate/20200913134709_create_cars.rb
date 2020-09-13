class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :model_year
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
