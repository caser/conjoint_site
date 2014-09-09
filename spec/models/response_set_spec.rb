require 'spec_helper'

describe ResponseSet do

  let(:response_set) {
    build(:response_set)
  }

  it "should belong to survey" do
    association = ResponseSet.reflect_on_association(:survey)
    association.macro.should eql(:belongs_to)
  end

  it "should belong to a respondent" do
    association = ResponseSet.reflect_on_association(:respondent)
    association.macro.should eql(:belongs_to)
  end

  it "should have a data instance variable" do
    response_set.data.should_not be_nil
  end

  it "should be invalid without data" do
    response_set = ResponseSet.new data: nil
    response_set.should_not be_valid
  end

  it "should store 'choice-y' data" do
    data = [
      [true, "a", 2, "green"], 
      [false, "z", 9, "yellow"],
      [false, "c", 4, "blue"]
    ]

    response_set.data = data

    response_set.save

    id = response_set.id

    response_set_2 = ResponseSet.find_by_id(id)
    response_set_2.data.should eql(data)
  end
end
