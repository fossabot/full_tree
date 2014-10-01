require 'rails_helper'

RSpec.describe "share_types/index", :type => :view do
  before(:each) do
    assign(:share_types, [
      ShareType.create!(
        :name => "Name"
      ),
      ShareType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of share_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
