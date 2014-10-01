require 'rails_helper'

RSpec.describe "share_categories/new", :type => :view do
  before(:each) do
    assign(:share_category, ShareCategory.new(
      :name => "MyString"
    ))
  end

  it "renders new share_category form" do
    render

    assert_select "form[action=?][method=?]", share_categories_path, "post" do

      assert_select "input#share_category_name[name=?]", "share_category[name]"
    end
  end
end
