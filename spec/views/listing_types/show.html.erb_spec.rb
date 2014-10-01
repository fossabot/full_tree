require 'rails_helper'

RSpec.describe "listing_types/show", :type => :view do
  before(:each) do
    @listing_type = assign(:listing_type, ListingType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
