require 'rails_helper'

RSpec.describe "Moties", type: :request do
  describe "GET /moties" do
    it "works! (now write some real specs)" do
      get moties_path
      expect(response).to have_http_status(200)
    end
  end
end
