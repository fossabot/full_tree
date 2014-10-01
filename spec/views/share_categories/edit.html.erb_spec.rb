require 'rails_helper'

RSpec.describe "share_categories/edit", :type => :view do
  before(:each) do
    @share_category = assign(:share_category, ShareCategory.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit share_category form" do
    render

    assert_select "form[action=?][method=?]", share_category_path(@share_category), "post" do

      assert_select "input#share_category_name[name=?]", "share_category[name]"
    end
  end
end
