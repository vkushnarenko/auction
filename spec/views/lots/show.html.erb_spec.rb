require 'rails_helper'

RSpec.describe "lots/show", type: :view do
  before(:each) do
    @lot = assign(:lot, Lot.create!(
      :name => "Name",
      :photo => "Photo",
      :description => "MyText",
      :startPrice => 2.5,
      :duration => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
  end
end
