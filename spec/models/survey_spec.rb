require 'spec_helper'

describe Survey do
  it "should have a method #design_matrix which accesses its 
    experiment's full factorial design" do
    survey = build(:survey)
    survey.design_matrix.should eql(survey.experiment.design_matrix)
  end
end
