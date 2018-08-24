require 'rails_helper'

RSpec.describe "lots/edit", type: :view do
  before(:each) do
    @lot = assign(:lot, Lot.create!(
      :name => "MyString",
      :photo => "MyString",
      :description => "MyText",
      :startPrice => 1.5,
      :duration => 1
    ))
  end

  it "renders the edit lot form" do
    render

    assert_select "form[action=?][method=?]", lot_path(@lot), "post" do

      assert_select "input[name=?]", "lot[name]"

      assert_select "input[name=?]", "lot[photo]"

      assert_select "textarea[name=?]", "lot[description]"

      assert_select "input[name=?]", "lot[startPrice]"

      assert_select "input[name=?]", "lot[duration]"
    end
  end
end
