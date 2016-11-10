require 'rails_helper'

RSpec.describe "employs/show", type: :view do
  before(:each) do
    @employ = assign(:employ, Employ.create!(
      :organization => "Organization",
      :position => "Position",
      :responsibility => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Organization/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/MyText/)
  end
end
