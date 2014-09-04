FactoryGirl.define do
  factory :experiment do
    title Faker::Lorem.sentence
    factory :experiment_with_factors do
      # posts_count is declared as a transient attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      transient do
        factors_count 5
      end

      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including transient
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |experiment, evaluator|
        create_list(:factor, evaluator.factors_count, experiment: experiment)
      end
    end
  end
end