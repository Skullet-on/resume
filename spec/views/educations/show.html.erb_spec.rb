require 'rails_helper'

RSpec.describe "educations/show", type: :view do
  before(:each) do
    @education = assign(:education, Education.create!(
      :organization => "Organization",
      :qualification => "Qualification",
      :major => "Major",
      :other => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Organization/)
    expect(rendered).to match(/Qualification/)
    expect(rendered).to match(/Major/)
    expect(rendered).to match(/MyText/)
  end
end
