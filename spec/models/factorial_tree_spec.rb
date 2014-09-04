require 'spec_helper'

describe FactorialTree do
  it "should have many nodes" do 
    association = Experiment.reflect_on_association(:factors)
    association.macro.should eql(:has_many)
  end
end
