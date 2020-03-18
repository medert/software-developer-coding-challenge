class AuctionSeeder
  AUCTIONS = [
    {
      title: "Great gas saver",
      make: "Toyota",
      current_price: 30,
      user_id: 1
    }, {
      title: "Fast and Furious",
      make: "BMW",
      current_price: 20,
      user_id: 1
    }, {
      title: "Off roader",
      make: "Subaru",
      current_price: 33,
      user_id: 2
    }, {
      title: "Working horse",
      make: "Fiat",
      current_price: 24,
      user_id: 2
    }, {
      title: "Roadster",
      make: "Chevrolet",
      current_price: 50,
      user_id: 3
    }, {
      title: "Rolling couch",
      make: "Lincoln",
      current_price: 10,
      user_id: 3
    }, {
      title: "Commuter",
      make: "Nissan",
      current_price: 13,
      user_id: 4
    }, {
      title: "Heavy duty monster",
      make: "Ford",
      current_price: 26,
      user_id: 4
    }
  ]

  def self.seed!
    AUCTIONS.each do |auction_params|
      title = auction_params[:title]
      auction = Auction.find_or_initialize_by(title: title)
      auction.assign_attributes(auction_params)
      auction.save
    end
  end
end