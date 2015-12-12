require "rails_helper"

RSpec.describe ParentBookkeepingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/parent_bookkeepings").to route_to("parent_bookkeepings#index")
    end

    it "routes to #new" do
      expect(:get => "/parent_bookkeepings/new").to route_to("parent_bookkeepings#new")
    end

    it "routes to #show" do
      expect(:get => "/parent_bookkeepings/1").to route_to("parent_bookkeepings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/parent_bookkeepings/1/edit").to route_to("parent_bookkeepings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/parent_bookkeepings").to route_to("parent_bookkeepings#create")
    end

    it "routes to #update" do
      expect(:put => "/parent_bookkeepings/1").to route_to("parent_bookkeepings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/parent_bookkeepings/1").to route_to("parent_bookkeepings#destroy", :id => "1")
    end

  end
end
