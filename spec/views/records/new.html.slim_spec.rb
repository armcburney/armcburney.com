require 'rails_helper'

RSpec.describe "records/new", type: :view do
  before(:each) do
    assign(:record, Record.new(
      :title => "MyString",
      :subtitle => "MyString",
      :heading => "MyString",
      :date => "MyString",
      :image_path => "MyString"
    ))
  end

  it "renders new record form" do
    render

    assert_select "form[action=?][method=?]", records_path, "post" do

      assert_select "input[name=?]", "record[title]"

      assert_select "input[name=?]", "record[subtitle]"

      assert_select "input[name=?]", "record[heading]"

      assert_select "input[name=?]", "record[date]"

      assert_select "input[name=?]", "record[image_path]"
    end
  end
end
