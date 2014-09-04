require 'spec_helper'

describe Node do
  it "should belong to parent" do
    association = Node.reflect_on_association(:parent)
    association.macro.should eql(:belongs_to)
  end

  it "should have many children" do
    association = Node.reflect_on_association(:children)
    association.macro.should eql(:has_many)
  end
end
