require 'rails_helper'

RSpec.describe "lots/index", type: :view do
  before(:each) do
    assign(:lots, [
      Lot.create!(
        :name => "Name",
        :photo => "Photo",
        :description => "MyText",
        :startPrice => 2.5,
        :duration => 3
      ),
      Lot.create!(
        :name => "Name",
        :photo => "Photo",
        :description => "MyText",
        :startPrice => 2.5,
        :duration => 3
      )
    ])
  end

  it "renders a list of lots" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
