require 'rails_helper'

RSpec.describe "share_types/new", :type => :view do
  before(:each) do
    assign(:share_type, ShareType.new(
      :name => "MyString"
    ))
  end

  it "renders new share_type form" do
    render

    assert_select "form[action=?][method=?]", share_types_path, "post" do

      assert_select "input#share_type_name[name=?]", "share_type[name]"
    end
  end
end
