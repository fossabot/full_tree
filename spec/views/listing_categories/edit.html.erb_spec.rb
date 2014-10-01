require 'rails_helper'

RSpec.describe "listing_categories/edit", :type => :view do
  before(:each) do
    @listing_category = assign(:listing_category, ListingCategory.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit listing_category form" do
    render

    assert_select "form[action=?][method=?]", listing_category_path(@listing_category), "post" do

      assert_select "input#listing_category_name[name=?]", "listing_category[name]"
    end
  end
end
