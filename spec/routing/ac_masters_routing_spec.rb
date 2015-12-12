require "rails_helper"

RSpec.describe AcMastersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ac_masters").to route_to("ac_masters#index")
    end

    it "routes to #new" do
      expect(:get => "/ac_masters/new").to route_to("ac_masters#new")
    end

    it "routes to #show" do
      expect(:get => "/ac_masters/1").to route_to("ac_masters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ac_masters/1/edit").to route_to("ac_masters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ac_masters").to route_to("ac_masters#create")
    end

    it "routes to #update" do
      expect(:put => "/ac_masters/1").to route_to("ac_masters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ac_masters/1").to route_to("ac_masters#destroy", :id => "1")
    end

  end
end
