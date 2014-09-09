# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response_set do
    data [[true, false].shuffle, Faker::Lorem.word, 
      Faker::Lorem.word, Faker::Lorem.word]
  end
end
