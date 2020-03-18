require 'rails_helper'

RSpec.describe Auction, type: :model do
    describe 'validations' do
        it {should have_valid(:title).when("Great Ride") }
        it {should_not have_valid(:title).when("", nil) }  

        it {should have_valid(:make).when("Subaru") }
        it {should_not have_valid(:make).when("", nil) }  

        it {should have_valid(:current_price).when(0.0,10.0) }
        it {should_not have_valid(:current_price).when("", nil) } 

        it {should have_valid(:user_id).when(1) }
        it {should_not have_valid(:user_id).when("", nil) }
    end 
end
