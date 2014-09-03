require 'spec_helper'

describe Factor do
  it "should be invalid without a title" do
    factor = build(:factor, title: nil)
    factor.should_not be_valid
  end

  it "should be invalid without levels" do
    factor = Factor.new(levels: nil)
    factor.should_not be_valid
  end
end
