require 'rails_helper'

RSpec.describe "employs/index", type: :view do
  before(:each) do
    assign(:employs, [
      Employ.create!(
        :organization => "Organization",
        :position => "Position",
        :responsibility => "MyText"
      ),
      Employ.create!(
        :organization => "Organization",
        :position => "Position",
        :responsibility => "MyText"
      )
    ])
  end

  it "renders a list of employs" do
    render
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
