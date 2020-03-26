
require 'rails_helper'

RSpec.feature "View Single Auction" do
  let!(:user){create(:user)}
  let!(:auctions){create_list :auction, 1, user_id: user.id}
  let!(:diff_user){create(:user)}

  scenario "user signs in and views one auction" do
    sign_in_as(diff_user)
    expect(page).to have_link("Auctions")
    expect(page).to have_content("Active Auctions")
    expect(page).to have_link("New Auction")

    auctions.each do |auction|
        expect(page).to have_content(auction.title)
        expect(page).to have_content(auction.realized_price)
    end
  end

  scenario "user signs in and views auctions that were created by the user" do
    sign_in_as(user)
    click_link "My Auctions"
    expect(page).to have_link("My Auctions")
    expect(page).to have_content("My Auctions")
    expect(page).to have_link("New Auction")

    auctions.each do |auction|
        expect(page).to have_content(auction.title)
        expect(page).to have_content(auction.realized_price)
    end
  end
end