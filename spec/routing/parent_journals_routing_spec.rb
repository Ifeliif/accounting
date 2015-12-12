require "rails_helper"

RSpec.describe ParentJournalsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/parent_journals").to route_to("parent_journals#index")
    end

    it "routes to #new" do
      expect(:get => "/parent_journals/new").to route_to("parent_journals#new")
    end

    it "routes to #show" do
      expect(:get => "/parent_journals/1").to route_to("parent_journals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/parent_journals/1/edit").to route_to("parent_journals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/parent_journals").to route_to("parent_journals#create")
    end

    it "routes to #update" do
      expect(:put => "/parent_journals/1").to route_to("parent_journals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/parent_journals/1").to route_to("parent_journals#destroy", :id => "1")
    end

  end
end
