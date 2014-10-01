require 'rails_helper'

RSpec.describe "share_categories/index", :type => :view do
  before(:each) do
    assign(:share_categories, [
      ShareCategory.create!(
        :name => "Name"
      ),
      ShareCategory.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of share_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
