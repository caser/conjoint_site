# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :survey do
    title Faker::Lorem.sentence
    association :experiment, factory: :experiment_with_factors
  end
end
