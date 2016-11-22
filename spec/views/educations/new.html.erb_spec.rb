require 'rails_helper'

RSpec.describe "educations/new", type: :view do
  before(:each) do
    assign(:education, Education.new(
      :organization => "MyString",
      :qualification => "MyString",
      :major => "MyString",
      :other => "MyText"
    ))
  end

  it "renders new education form" do
    render

    assert_select "form[action=?][method=?]", educations_path, "post" do

      assert_select "input#education_organization[name=?]", "education[organization]"

      assert_select "input#education_qualification[name=?]", "education[qualification]"

      assert_select "input#education_major[name=?]", "education[major]"

      assert_select "textarea#education_other[name=?]", "education[other]"
    end
  end
end
