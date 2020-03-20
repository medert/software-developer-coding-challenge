require "rails_helper"

RSpec.describe BidsController, type: :routing do

  describe "routing" do
    it "routes to #index" do
      expect(:get => "/auctions/1/bids").to route_to("bids#index", auction_id: "1")
    end

    it "routes to #create" do
      expect(:post => "/auctions/1/bids").to route_to("bids#create", auction_id: "1")
    end
  end
end
