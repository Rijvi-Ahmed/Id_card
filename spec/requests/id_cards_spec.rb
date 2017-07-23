require 'rails_helper'

RSpec.describe "IdCards", type: :request do
  describe "GET /id_cards" do
    it "works! (now write some real specs)" do
      get id_cards_path
      expect(response).to have_http_status(200)
    end
  end
end
