require 'rails_helper'

RSpec.describe "auctions/show", type: :view do
  before(:each) do
    @auction = create(:auction)
  end

  it "renders attributes in <p>" do
    render
  end
end
