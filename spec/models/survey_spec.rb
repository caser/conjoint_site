require 'spec_helper'

describe Survey do
  it "should have a title to display to users" do
    survey = build(:survey)
    survey.title.should_not be_nil
  end

  it "should be invalid without a title" do
    survey = Survey.new title: nil
    survey.should_not be_valid
  end

  it "should have a method #design_matrix which accesses its 
    experiment's full factorial design" do
    survey = build(:survey)
    survey.design_matrix.should eql(survey.experiment.design_matrix)
  end

  it "should have a method #generate_choice_set(num) which creates a
    choice set with (num) amounts of choices" do
    survey = build(:survey)
    choice_set = survey.generate_choice_set(3)
    
    choice_set.uniq.should have(3).items
    choice_set.each do |choice|
      survey.design_matrix.should include(choice)
    end
  end

  it "should have many response_sets" do
    association = Survey.reflect_on_association(:response_sets)
    association.macro.should eql(:has_many)
  end
end
