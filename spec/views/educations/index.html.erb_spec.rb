require 'rails_helper'

RSpec.describe "educations/index", type: :view do
  before(:each) do
    assign(:educations, [
      Education.create!(
        :organization => "Organization",
        :qualification => "Qualification",
        :major => "Major",
        :other => "MyText"
      ),
      Education.create!(
        :organization => "Organization",
        :qualification => "Qualification",
        :major => "Major",
        :other => "MyText"
      )
    ])
  end

  it "renders a list of educations" do
    render
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => "Qualification".to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
