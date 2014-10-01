require 'rails_helper'

RSpec.describe "listings/show", :type => :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      :user_id => 1,
      :community_id => 2,
      :listing_type_id => 3,
      :listing_category_id => 4,
      :share_type_id => 5,
      :share_category_id => 6,
      :txn_terms => "Txn Terms",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Txn Terms/)
    expect(rendered).to match(/MyText/)
  end
end
