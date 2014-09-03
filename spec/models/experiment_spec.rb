require 'spec_helper'

describe Experiment do
  it "should be invalid without a title" do
    experiment = Experiment.new title: nil
    experiment.should_not be_valid
  end

  it "should persist the title to the database" do
    experiment = build(:experiment)
    title = experiment.title
    experiment.save
    experiment2 = Experiment.find_by_title(title)
    experiment2.should_not be_nil
  end

  it "should have many factors" do
    association = Experiment.reflect_on_association(:factors)
    association.macro.should eql(:has_many)
  end

  it "should have many surveys" do
    association = Experiment.reflect_on_association(:surveys)
    association.macro.should eql(:has_many)
  end
end
