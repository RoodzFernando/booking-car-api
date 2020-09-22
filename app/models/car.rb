class Car < ApplicationRecord
   before_create :slugify
   has_many :appointments

  def slugify
    self.slug = "#{make}-#{model.parameterize}"
  end
end
