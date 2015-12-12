require "rails_helper"

RSpec.describe CategoryMastersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/category_masters").to route_to("category_masters#index")
    end

    it "routes to #new" do
      expect(:get => "/category_masters/new").to route_to("category_masters#new")
    end

    it "routes to #show" do
      expect(:get => "/category_masters/1").to route_to("category_masters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/category_masters/1/edit").to route_to("category_masters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/category_masters").to route_to("category_masters#create")
    end

    it "routes to #update" do
      expect(:put => "/category_masters/1").to route_to("category_masters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/category_masters/1").to route_to("category_masters#destroy", :id => "1")
    end

  end
end
