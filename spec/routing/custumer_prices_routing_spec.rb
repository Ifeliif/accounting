require "rails_helper"

RSpec.describe CustumerPricesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/custumer_prices").to route_to("custumer_prices#index")
    end

    it "routes to #new" do
      expect(:get => "/custumer_prices/new").to route_to("custumer_prices#new")
    end

    it "routes to #show" do
      expect(:get => "/custumer_prices/1").to route_to("custumer_prices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/custumer_prices/1/edit").to route_to("custumer_prices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/custumer_prices").to route_to("custumer_prices#create")
    end

    it "routes to #update" do
      expect(:put => "/custumer_prices/1").to route_to("custumer_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/custumer_prices/1").to route_to("custumer_prices#destroy", :id => "1")
    end

  end
end
