require "rails_helper"

RSpec.describe ListingTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/listing_types").to route_to("listing_types#index")
    end

    it "routes to #new" do
      expect(:get => "/listing_types/new").to route_to("listing_types#new")
    end

    it "routes to #show" do
      expect(:get => "/listing_types/1").to route_to("listing_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/listing_types/1/edit").to route_to("listing_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/listing_types").to route_to("listing_types#create")
    end

    it "routes to #update" do
      expect(:put => "/listing_types/1").to route_to("listing_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/listing_types/1").to route_to("listing_types#destroy", :id => "1")
    end

  end
end
