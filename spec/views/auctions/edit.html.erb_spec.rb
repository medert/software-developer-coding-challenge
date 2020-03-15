require 'rails_helper'

RSpec.describe "auctions/edit", type: :view do
  before(:each) do
    @user = create(:user)
    sign_in(@user)
    @auction = create(:auction, user_id: @user.id)
  end

  it "renders the edit auction form" do
    render

    assert_select "form[action=?][method=?]", auction_path(@auction), "post" do
    end
  end
end
