require 'rails_helper'

RSpec.describe "share_categories/show", :type => :view do
  before(:each) do
    @share_category = assign(:share_category, ShareCategory.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
