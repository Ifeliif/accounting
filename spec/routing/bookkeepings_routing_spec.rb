require "rails_helper"

RSpec.describe BookkeepingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bookkeepings").to route_to("bookkeepings#index")
    end

    it "routes to #new" do
      expect(:get => "/bookkeepings/new").to route_to("bookkeepings#new")
    end

    it "routes to #show" do
      expect(:get => "/bookkeepings/1").to route_to("bookkeepings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bookkeepings/1/edit").to route_to("bookkeepings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bookkeepings").to route_to("bookkeepings#create")
    end

    it "routes to #update" do
      expect(:put => "/bookkeepings/1").to route_to("bookkeepings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bookkeepings/1").to route_to("bookkeepings#destroy", :id => "1")
    end

  end
end
