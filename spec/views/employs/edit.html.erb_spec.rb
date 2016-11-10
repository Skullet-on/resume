require 'rails_helper'

RSpec.describe "employs/edit", type: :view do
  before(:each) do
    @employ = assign(:employ, Employ.create!(
      :organization => "MyString",
      :position => "MyString",
      :responsibility => "MyText"
    ))
  end

  it "renders the edit employ form" do
    render

    assert_select "form[action=?][method=?]", employ_path(@employ), "post" do

      assert_select "input#employ_organization[name=?]", "employ[organization]"

      assert_select "input#employ_position[name=?]", "employ[position]"

      assert_select "textarea#employ_responsibility[name=?]", "employ[responsibility]"
    end
  end
end
