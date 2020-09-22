class Car < ApplicationRecord
   before_create :slugify
   has_many :appointments
   has_many :users, through: :appointments
  #  belongs_to :user

  def slugify
    self.slug = "#{make}-#{model.parameterize}"
  end
end
