require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :heading => "Heading",
        :date => "Date",
        :image_path => "Image Path"
      ),
      Record.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :heading => "Heading",
        :date => "Date",
        :image_path => "Image Path"
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Subtitle".to_s, :count => 2
    assert_select "tr>td", :text => "Heading".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Image Path".to_s, :count => 2
  end
end
