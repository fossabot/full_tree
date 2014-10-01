require 'rails_helper'

RSpec.describe "share_types/show", :type => :view do
  before(:each) do
    @share_type = assign(:share_type, ShareType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
