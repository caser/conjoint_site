require 'spec_helper'

describe Factor do
  it "should be invalid without a title" do
    factor = Factor.new title: nil
    factor.should_not be_valid
  end

  
end
