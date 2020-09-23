FactoryGirl.define do
  factory :user do
    username      {Faker::Name.name} 
    password         {123456}
    password_confirmation  {123456}
  end
end