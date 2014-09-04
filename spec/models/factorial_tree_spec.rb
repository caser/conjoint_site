require 'spec_helper'

describe FactorialTree do
  it "should have one root" do 
    association = FactorialTree.reflect_on_association(:root)
    association.macro.should eql(:has_one)
  end
end
