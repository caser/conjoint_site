require 'spec_helper'

describe Node do
  it "should have many children" do
    association = Node.reflect_on_association(:children)
    association.macro.should eql(:has_many)
  end

  it "should be able to store complex data" do
    node = build(:node)
    node.data = ["complex", "data"]
    node.save
    id = node.id
    node2 = Node.find_by_id(id)
    node2.data.should eql(["complex", "data"])
  end
end
