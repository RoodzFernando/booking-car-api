class Car < ApplicationRecord
   before_create :slugify

  def slugify
    self.slug = "#{make}-#{model.parameterize}"
  end
end
