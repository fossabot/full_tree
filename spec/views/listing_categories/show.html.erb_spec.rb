require 'rails_helper'

RSpec.describe "listing_categories/show", :type => :view do
  before(:each) do
    @listing_category = assign(:listing_category, ListingCategory.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
