require 'rails_helper'

RSpec.describe "listing_types/new", :type => :view do
  before(:each) do
    assign(:listing_type, ListingType.new(
      :name => "MyString"
    ))
  end

  it "renders new listing_type form" do
    render

    assert_select "form[action=?][method=?]", listing_types_path, "post" do

      assert_select "input#listing_type_name[name=?]", "listing_type[name]"
    end
  end
end
