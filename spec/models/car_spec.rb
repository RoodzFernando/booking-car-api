require 'rails_helper'

RSpec.describe Car, type: :model do
  it {should validate_presence_of(:make)}
  it {should validate_presence_of(:model)}
  it {should validate_presence_of(:model_year)}
  it {should validate_presence_of(:image_url)}
  it {should validate_presence_of(:price)}
  it {should validate_presence_of(:consommation)}
  it {should validate_presence_of(:description)}
  it {should validate_presence_of(:power)}
  it {should validate_presence_of(:motor)}
end
