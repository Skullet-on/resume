require 'rails_helper'

RSpec.describe "skills/show", type: :view do
  before(:each) do
    @skill = assign(:skill, Skill.create!(
      :technology => "Technology",
      :exp => 2,
      :proficiency => "Proficiency"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Technology/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Proficiency/)
  end
end
