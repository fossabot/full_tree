require 'rails_helper'

RSpec.describe "listings/new", :type => :view do
  before(:each) do
    assign(:listing, Listing.new(
      :user_id => 1,
      :community_id => 1,
      :listing_type_id => 1,
      :listing_category_id => 1,
      :share_type_id => 1,
      :share_category_id => 1,
      :txn_terms => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input#listing_user_id[name=?]", "listing[user_id]"

      assert_select "input#listing_community_id[name=?]", "listing[community_id]"

      assert_select "input#listing_listing_type_id[name=?]", "listing[listing_type_id]"

      assert_select "input#listing_listing_category_id[name=?]", "listing[listing_category_id]"

      assert_select "input#listing_share_type_id[name=?]", "listing[share_type_id]"

      assert_select "input#listing_share_category_id[name=?]", "listing[share_category_id]"

      assert_select "input#listing_txn_terms[name=?]", "listing[txn_terms]"

      assert_select "textarea#listing_description[name=?]", "listing[description]"
    end
  end
end
