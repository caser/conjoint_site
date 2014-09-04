FactoryGirl.define do
  factory :experiment do
    title Faker::Lorem.sentence
  end

  factory :experiment_with_factors, :parent => :experiment do |experiment|
    factors { build_list :factor, 3 }
  end 
end