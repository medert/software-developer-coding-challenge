require 'rails_helper'

RSpec.describe Auction, type: :model do
    describe 'validations' do
        it {should have_valid(:title).when("Subaru Forester 03") }
        it {should_not have_valid(:title).when("", nil) }  

        it {should have_valid(:make).when("Subaru") }
        it {should_not have_valid(:make).when("", nil) }  

        it {should have_valid(:end_date).when(01/01/2021) }
        it {should_not have_valid(:end_date).when("",0,nil) }  

        it {should have_valid(:current_price).when(0.0,10.0) }
        it {should_not have_valid(:current_price).when("", nil, 0, 10) } 

        it {should have_valid(:user_id).when(1}
        it {should_not have_valid(:user_id).when("", nil)
    end 
end
