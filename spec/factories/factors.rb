FactoryGirl.define do
  factory :factor do
    title "Color"
    levels [Faker::Commerce.color, Faker::Commerce.color, Faker::Commerce.color].uniq
  end
end