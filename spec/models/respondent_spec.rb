require 'spec_helper'

describe Respondent do
  it "should have many response sets" do
    association = Respondent.reflect_on_association(:response_sets)
    association.macro.should eql(:has_many)
  end
end
