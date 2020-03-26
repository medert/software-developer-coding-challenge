FactoryBot.define do
  factory :auction do
    sequence(:title) {|n| "Bestno. #{n}"}
    sequence(:make)  {|n| "Subaru no. #{n}"}
    starting_price { 10.0 }
    realized_price { 10.0 + 1}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/Subaru.jpg'), 'image/jpeg') }
    association :user, factory: :user

    factory :auction_with_bids do
      after(:create) do |new_auction|
        FactoryBot.create_list(:bid, 3, auction: new_auction, user_id: 100)
      end
    end

    trait :invalid do
      title {nil}
    end
  end
end
