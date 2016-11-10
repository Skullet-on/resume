require "rails_helper"

RSpec.describe EmploysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/employs").to route_to("employs#index")
    end

    it "routes to #new" do
      expect(:get => "/employs/new").to route_to("employs#new")
    end

    it "routes to #show" do
      expect(:get => "/employs/1").to route_to("employs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/employs/1/edit").to route_to("employs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/employs").to route_to("employs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/employs/1").to route_to("employs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/employs/1").to route_to("employs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/employs/1").to route_to("employs#destroy", :id => "1")
    end

  end
end
