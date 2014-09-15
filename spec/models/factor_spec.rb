require 'spec_helper'

describe Factor do
  it "should be invalid without a title" do
    factor = build(:factor, title: nil)
    factor.should_not be_valid
  end

  it "should persist the title to the database" do
    factor = build(:factor)
    title = factor.title
    factor.save
    factor2 = Factor.find_by_title(title)
    factor2.should_not be_nil
  end

  it "should be invalid without levels" do
    factor = Factor.new(levels: nil)
    factor.should_not be_valid
  end

  it "should store levels in the database" do
    factor = build(:factor)
    factor.save
    id = factor.id
    levels = factor.levels
    factor2 = Factor.find_by_id(id)
    factor2.levels.should eql(levels)
  end
end
