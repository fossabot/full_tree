require 'rails_helper'

RSpec.describe "listing_types/edit", :type => :view do
  before(:each) do
    @listing_type = assign(:listing_type, ListingType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit listing_type form" do
    render

    assert_select "form[action=?][method=?]", listing_type_path(@listing_type), "post" do

      assert_select "input#listing_type_name[name=?]", "listing_type[name]"
    end
  end
end
