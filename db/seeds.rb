
if Rails.env.development? || Rails.env.production?
  UserSeeder.seed!
  AuctionSeeder.seed!
end