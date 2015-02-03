require 'rails_helper'

RSpec.describe BillsController, :type => :controller do
  describe "GET index" do
    it"populates an array of bills" do
    end
    it "renders the 'index' view" do
      get :index
       response.should render_template("index")
       response.code.should eql("200")
    end
  end

  describe "POST index" do
    it "should return bills that match keyword" do
    end
    it "should return error message if bill does not include keyword" do
    end
  end

  describe "GET show" do
    it "renders the 'show' template" do
      get :show
      response.should render_template("show")
      response.code.should eql("200")
    end
  end
end