# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#     User.create(
#         first_name: FFaker::Name.first_name,
#         last_name: FFaker::Name.last_name,
#         email: FFaker::Internet.free_email,
#         password: 'Sekret123',
#         admin: false
#     )
# end

# 20.times do
#     Auction.create(
#         title: FFaker::Product.product,
#         make: FFaker::Product.product_name,
#         curent_price: 10,
#         user_id:
#     )
# end


if Rails.env.development? || Rails.env.production?
  UserSeeder.seed!
end