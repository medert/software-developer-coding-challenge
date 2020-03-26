require 'rails_helper'

RSpec.describe Auction, type: :model do

  describe 'should have many' do
    it {should have_many(:bids)}
  end
  describe 'should belong to' do
    it {should belong_to(:user)}
  end

  describe 'validations' do
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
end
