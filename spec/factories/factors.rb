FactoryGirl.define do
  factory :factor do
    title Faker::Lorem.word.capitalize
    experiment
    levels [Faker::Lorem.word, Faker::Lorem.word, Faker::Lorem.word, Faker::Lorem.word].uniq
  end

  factory :color_factor, parent: :factor do
    title "Color"
    experiment
    levels [Faker::Commerce.color, Faker::Commerce.color, Faker::Commerce.color].uniq
  end

  factory :credit_card_factor, parent: :factor do
    title "Credit Card"
    experiment
    levels [Faker::Business.credit_card_type, Faker::Business.credit_card_type, Faker::Business.credit_card_type, Faker::Business.credit_card_type, Faker::Business.credit_card_type].uniq
  end

  factory :job_title_factor, parent: :factor do
    title "Job Title"
    experiment
    levels [Faker::Name.title, Faker::Name.title, Faker::Name.title, Faker::Name.title, Faker::Name.title, Faker::Name.title].uniq
  end
end

