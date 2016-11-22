require 'rails_helper'

RSpec.describe "employs/new", type: :view do
  before(:each) do
    assign(:employ, Employ.new(
      :organization => "MyString",
      :position => "MyString",
      :responsibility => "MyText"
    ))
  end

  it "renders new employ form" do
    render

    assert_select "form[action=?][method=?]", employs_path, "post" do

      assert_select "input#employ_organization[name=?]", "employ[organization]"

      assert_select "input#employ_position[name=?]", "employ[position]"

      assert_select "textarea#employ_responsibility[name=?]", "employ[responsibility]"
    end
  end
end
