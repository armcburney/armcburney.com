require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      :title => "MyString",
      :subtitle => "MyString",
      :heading => "MyString",
      :date => "MyString",
      :image_path => "MyString"
    ))
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(@record), "post" do

      assert_select "input[name=?]", "record[title]"

      assert_select "input[name=?]", "record[subtitle]"

      assert_select "input[name=?]", "record[heading]"

      assert_select "input[name=?]", "record[date]"

      assert_select "input[name=?]", "record[image_path]"
    end
  end
end
