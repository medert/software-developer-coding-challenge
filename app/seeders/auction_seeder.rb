class AuctionSeeder
  AUCTIONS = [
    {
      title: "Great gas saver",
      make: "Toyota",
      starting_price: 30,
      realized_price: 30 + 1,
      image: Rails.root.join("app/assets/images/auctions/Toyota.jpg").open,
      user_id: 1
    }, {
      title: "Fast and Furious",
      make: "BMW",
      starting_price: 20,
      realized_price: 20 + 1,
      image: Rails.root.join("app/assets/images/auctions/BMW.jpg").open,
      user_id: 1
    }, {
      title: "Working horse",
      make: "Fiat",
      starting_price: 24,
      realized_price: 24 + 1,
      image: Rails.root.join("app/assets/images/auctions/Fiat.jpg").open,
      user_id: 2
    }, {
      title: "Roadster",
      make: "Chevrolet",
      starting_price: 50,
      realized_price: 50 + 1,
      image: Rails.root.join("app/assets/images/auctions/Chevrolet.jpg").open,
      user_id: 3
    }, {
      title: "Rolling couch",
      make: "Lincoln",
      starting_price: 10,
      realized_price: 10 + 1,
      image: Rails.root.join("app/assets/images/auctions/Lincoln.jpg").open,
      user_id: 3
    }, {
      title: "Commuter",
      make: "Nissan",
      starting_price: 13,
      realized_price: 13 + 1,
      image: Rails.root.join("app/assets/images/auctions/Nissan.jpg").open,
      user_id: 4
    }, {
      title: "Heavy duty monster",
      make: "Ford",
      starting_price: 26,
      realized_price: 26 + 1,
      image: Rails.root.join("app/assets/images/auctions/Ford.jpg").open,
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