require 'rails_helper'

RSpec.describe "skills/new", type: :view do
  before(:each) do
    assign(:skill, Skill.new(
      :technology => "MyString",
      :exp => 1,
      :proficiency => "MyString"
    ))
  end

  it "renders new skill form" do
    render

    assert_select "form[action=?][method=?]", skills_path, "post" do

      assert_select "input#skill_technology[name=?]", "skill[technology]"

      assert_select "input#skill_exp[name=?]", "skill[exp]"

      assert_select "input#skill_proficiency[name=?]", "skill[proficiency]"
    end
  end
end
