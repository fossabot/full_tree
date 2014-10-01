require 'rails_helper'

RSpec.describe "listing_categories/index", :type => :view do
  before(:each) do
    assign(:listing_categories, [
      ListingCategory.create!(
        :name => "Name"
      ),
      ListingCategory.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of listing_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
