require "rails_helper"

RSpec.describe IdCardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/id_cards").to route_to("id_cards#index")
    end


    it "routes to #show" do
      expect(:get => "/id_cards/1").to route_to("id_cards#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/id_cards").to route_to("id_cards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/id_cards/1").to route_to("id_cards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/id_cards/1").to route_to("id_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/id_cards/1").to route_to("id_cards#destroy", :id => "1")
    end

  end
end
