require "rails_helper"

RSpec.describe AuctionSeeder do
  it "does not create dublicates records on multiple runs" do
    AuctionSeeder.seed!
    first_count = Auction.count
    AuctionSeeder.seed!
    expect(Auction.count).to eq(first_count)
  end
end
