require 'rails_helper'

RSpec.describe "skills/edit", type: :view do
  before(:each) do
    @skill = assign(:skill, Skill.create!(
      :technology => "MyString",
      :exp => 1,
      :proficiency => "MyString"
    ))
  end

  it "renders the edit skill form" do
    render

    assert_select "form[action=?][method=?]", skill_path(@skill), "post" do

      assert_select "input#skill_technology[name=?]", "skill[technology]"

      assert_select "input#skill_exp[name=?]", "skill[exp]"

      assert_select "input#skill_proficiency[name=?]", "skill[proficiency]"
    end
  end
end
