require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'validations' do
        it { should have_valid(:first_name).when("Tom") }
        it { should_not have_valid(:first_name).when("",nil) }

        it {should have_valid(:last_name).when("Sawyer") }
        it {should_not have_valid(:last_name).when("", nil) }
        
        it {should have_valid(:email).when("toms@gmail.com") }
        it {should_not have_valid(:email).when("", nil, "Tom") }  
    end 
end