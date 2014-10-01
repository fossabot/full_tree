require 'rails_helper'

RSpec.describe "listing_categories/new", :type => :view do
  before(:each) do
    assign(:listing_category, ListingCategory.new(
      :name => "MyString"
    ))
  end

  it "renders new listing_category form" do
    render

    assert_select "form[action=?][method=?]", listing_categories_path, "post" do

      assert_select "input#listing_category_name[name=?]", "listing_category[name]"
    end
  end
end
