require 'spec_helper'

describe Experiment do
  it "should be invalid without a name" do
    experiment = Experiment.new name: nil
    experiment.should_not be_valid
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
