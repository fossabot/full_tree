require 'rails_helper'

RSpec.describe "listings/index", :type => :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        :user_id => 1,
        :community_id => 2,
        :listing_type_id => 3,
        :listing_category_id => 4,
        :share_type_id => 5,
        :share_category_id => 6,
        :txn_terms => "Txn Terms",
        :description => "MyText"
      ),
      Listing.create!(
        :user_id => 1,
        :community_id => 2,
        :listing_type_id => 3,
        :listing_category_id => 4,
        :share_type_id => 5,
        :share_category_id => 6,
        :txn_terms => "Txn Terms",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Txn Terms".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
