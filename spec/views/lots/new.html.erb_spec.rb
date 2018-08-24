require 'rails_helper'

RSpec.describe "lots/new", type: :view do
  before(:each) do
    assign(:lot, Lot.new(
      :name => "MyString",
      :photo => "MyString",
      :description => "MyText",
      :startPrice => 1.5,
      :duration => 1
    ))
  end

  it "renders new lot form" do
    render

    assert_select "form[action=?][method=?]", lots_path, "post" do

      assert_select "input[name=?]", "lot[name]"

      assert_select "input[name=?]", "lot[photo]"

      assert_select "textarea[name=?]", "lot[description]"

      assert_select "input[name=?]", "lot[startPrice]"

      assert_select "input[name=?]", "lot[duration]"
    end
  end
end
