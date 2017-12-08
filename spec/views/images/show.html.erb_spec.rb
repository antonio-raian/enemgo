require 'rails_helper'

RSpec.describe "images/show", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :source => "Source",
      :imageable => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Source/)
    expect(rendered).to match(//)
  end
end
