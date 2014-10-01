require 'rails_helper'

RSpec.describe "listing_types/index", :type => :view do
  before(:each) do
    assign(:listing_types, [
      ListingType.create!(
        :name => "Name"
      ),
      ListingType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of listing_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
