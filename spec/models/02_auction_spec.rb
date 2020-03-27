require 'rails_helper'

RSpec.describe Auction, type: :model do

  describe 'should have many' do
    it {should have_many(:bids)}
  end
  describe 'should belong to' do
    it {should belong_to(:user)}
  end

  describe 'should validate' do
    it {should have_valid(:title).when("Great Ride") }
    it {should_not have_valid(:title).when("", nil) }

    it {should have_valid(:make).when("Subaru") }
    it {should_not have_valid(:make).when("", nil) }

    it {should have_valid(:starting_price).when(0.0,10.0) }
    it {should_not have_valid(:starting_price).when("", nil) }

    it {should have_valid(:realized_price).when(0.0,10.0) }
    it {should_not have_valid(:realized_price).when("", nil) }

    it {should have_valid(:user_id).when(1) }
    it {should_not have_valid(:user_id).when("", nil) }
  end

  let(:user){create(:user)}
  before {login_as(user)}
  
  it "has none to begin with" do
    expect(Auction.count).to eq(0)
  end

  it "has one after adding one" do
    Auction.create(title: "Great car", make: "Subaru", starting_price: 10, image: nil, user_id: user.id)

    expect(Auction.count).to eq(1)
  end

  it "has none after one was created in a previous example" do
    expect(Auction.count).to eq(0)
  end
end
