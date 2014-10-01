require 'rails_helper'

RSpec.describe "ListingTypes", :type => :request do
  describe "GET /listing_types" do
    it "works! (now write some real specs)" do
      get listing_types_path
      expect(response).to have_http_status(200)
    end
  end
end
