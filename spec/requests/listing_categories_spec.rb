require 'rails_helper'

RSpec.describe "ListingCategories", :type => :request do
  describe "GET /listing_categories" do
    it "works! (now write some real specs)" do
      get listing_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
