# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:car_id) }
end
