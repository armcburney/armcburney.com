require 'rails_helper'

RSpec.describe "records/show", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      :title => "Title",
      :subtitle => "Subtitle",
      :heading => "Heading",
      :date => "Date",
      :image_path => "Image Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Subtitle/)
    expect(rendered).to match(/Heading/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Image Path/)
  end
end
