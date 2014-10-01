require 'rails_helper'

RSpec.describe "shares/index", :type => :view do
  before(:each) do
    assign(:shares, [
      Share.create!(
        :name => "Name",
        :description => "MyText",
        :quantity => 1,
        :will_trade => false,
        :price => 1.5,
        :barter_terms => "MyText"
      ),
      Share.create!(
        :name => "Name",
        :description => "MyText",
        :quantity => 1,
        :will_trade => false,
        :price => 1.5,
        :barter_terms => "MyText"
      )
    ])
  end

  it "renders a list of shares" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
