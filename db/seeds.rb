puts "Seeding experiments..."
10.times do
  experiment = Experiment.create(title: Faker::Lorem.sentence)
end

# Seed factors
puts "Seeding factors..."
experiments = Experiment.all
30.times do
  factor = Factor.create(title: Faker::Lorem.word)
  factor.levels = [Faker::Lorem.word, Faker::Lorem.word, Faker::Lorem.word]
  factor.save
  experiments.sample.factors << factor
end

# Seed surveys
puts "Seeding surveys..."
experiments.each do |experiment|
  survey = Survey.create(title: Faker::Lorem.sentence)
  experiment.surveys << survey
end

# Seed response sets
puts "Seeding response sets..."
surveys = Survey.all
surveys.each do |survey|
  15.times do
    choice_set = survey.generate_choice_set
    choice_set.each do |choice|
      choice.unshift(0)
    end
    winner = choice_set.sample
    winner[0] = 1
    response_set = ResponseSet.create(data: choice_set.push(winner))
    survey.response_sets << response_set
  end
end

# Seed respondents
puts "Seeding respondents..."
response_sets = ResponseSet.all
response_sets.each do |response_set|
  respondent = Respondent.create()
  response_set.respondent = respondent
end

puts "Seed complete."