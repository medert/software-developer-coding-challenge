require 'rails_helper'

RSpec.describe Auction, type: :model do
    describe 'validations' do
        it {should have_valid(:title).when("Subaru Forester 03") }
        it {should_not have_valid(:title).when("", nil) }  

        it {should have_valid(:make).when("Subaru") }
        it {should_not have_valid(:make).when("", nil) }  

        it {should have_valid(:model).when("Forester") }
        it {should_not have_valid(:model).when("", nil) }  

        it {should have_valid(:prod_year).when(2003) }
        it {should_not have_valid(:prod_year).when("") }  

        it {should have_valid(:salvage).when(true, false) }
        it {should_not have_valid(:salvage).when("",0,nil) }  

        it {should have_valid(:current_price).when(0.0,10.0) }
        it {should_not have_valid(:init_price).when("", nil, 0, 10) }  
    end 
end
