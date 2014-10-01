require 'rails_helper'

RSpec.describe "shares/show", :type => :view do
  before(:each) do
    @share = assign(:share, Share.create!(
      :name => "Name",
      :description => "MyText",
      :quantity => 1,
      :will_trade => false,
      :price => 1.5,
      :barter_terms => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
  end
end
