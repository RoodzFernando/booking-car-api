# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    username { Faker::Name.name }
    password { 123_456 }
    password_confirmation { 123_456 }
  end
end
