require 'rails_helper'

RSpec.describe Bid, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end


RSpec.describe Bid, type: :model do
    describe 'validations' do
        it {should have_valid(:amount).when(1.00) }
        it {should_not have_valid(:amount).when("", nil, "1.00") }

        it {should have_valid(:user_id).when(1) }
        it {should_not have_valid(:user_id).when("", nil, "1.00") }

        it {should have_valid(:auction_id).when(1) }
        it {should_not have_valid(:auction_id).when("", nil, "1.00") }
    end
end