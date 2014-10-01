require 'rails_helper'

RSpec.describe "shares/new", :type => :view do
  before(:each) do
    assign(:share, Share.new(
      :name => "MyString",
      :description => "MyText",
      :quantity => 1,
      :will_trade => false,
      :price => 1.5,
      :barter_terms => "MyText"
    ))
  end

  it "renders new share form" do
    render

    assert_select "form[action=?][method=?]", shares_path, "post" do

      assert_select "input#share_name[name=?]", "share[name]"

      assert_select "textarea#share_description[name=?]", "share[description]"

      assert_select "input#share_quantity[name=?]", "share[quantity]"

      assert_select "input#share_will_trade[name=?]", "share[will_trade]"

      assert_select "input#share_price[name=?]", "share[price]"

      assert_select "textarea#share_barter_terms[name=?]", "share[barter_terms]"
    end
  end
end
