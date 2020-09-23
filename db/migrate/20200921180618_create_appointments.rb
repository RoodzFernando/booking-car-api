class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :city
      t.string :date
      t.references :user, index: false, foreign_key: true
      t.references :car, index: false, foreign_key: true

      t.timestamps
    end
  end
end
