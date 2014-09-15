require 'spec_helper'

describe ExperimentsController do

  describe "GET 'index'" do
    it "renders the index view" do
      get :index
      response.should render_template("index")
    end

    it "should populate an array of experiments" do
      experiment = create(:experiment)
      get :index
      assigns(:experiments).should eq([experiment])
    end
  end

  describe "GET 'new'" do
    it "renders the new view" do
      
    end
  end

  describe "GET 'edit'" do
    it "renders the edit view" do
      
    end
  end

end
