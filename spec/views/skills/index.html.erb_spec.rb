require 'rails_helper'

RSpec.describe "skills/index", type: :view do
  before(:each) do
    assign(:skills, [
      Skill.create!(
        :technology => "Technology",
        :exp => 2,
        :proficiency => "Proficiency"
      ),
      Skill.create!(
        :technology => "Technology",
        :exp => 2,
        :proficiency => "Proficiency"
      )
    ])
  end

  it "renders a list of skills" do
    render
    assert_select "tr>td", :text => "Technology".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Proficiency".to_s, :count => 2
  end
end
