require 'rails_helper'

RSpec.describe "Employs", type: :request do
  describe "GET /employs" do
    it "works! (now write some real specs)" do
      get employs_path
      expect(response).to have_http_status(200)
    end
  end
end
