require 'spec_helper'

describe Experiment do
  let(:color_factor) {
    FactoryGirl.build(:color_factor)
  }

  let(:credit_card_factor) {
    FactoryGirl.build(:credit_card_factor)
  }

  let(:job_title_factor) {
    FactoryGirl.build(:credit_card_factor)
  }

  let(:experiment) {
    Experiment.new(title: "Title", factors: [color_factor, credit_card_factor, job_title_factor])
  }

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

  it "should have a method #generate_design_matrix which returns the
    full factorial design" do
    experiment.generate_design_matrix
    experiment.design_matrix.should_not be_nil
  end

  it "should create a design matrix when design_matrix is called if
    it has not been initialized" do
    experiment.design_matrix.should_not be_nil
  end
end
