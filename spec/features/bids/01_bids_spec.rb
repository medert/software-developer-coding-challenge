require 'rails_helper'

RSpec.feature "Bids", type: :feature do
  let(:user) {create(:user) }
  let(:auction) {create(:auction) }
  let(:invalid_attributes) { attributes_for(:bid, :invalid)}

  describe "Place Bid" do
    before{ sign_in_as(user) }
    context "with valid attributes" do
      it "displays the bid on the auction page and flashes notice 'Bid was placed successfully!'" do
        visit auction_path(auction)

        fill_in "Amount", with: auction.realized_price + 1
        click_button "Place Your Bid"

        expect(page).to have_text(auction.realized_price + 1)
        expect(page).to have_text("Bid was successfully placed!")
      end
    end

    context "with invalid attributes" do
      context "with empty amount" do
        it "shows an alert that 'Amount is not a number'" do
          visit auction_path(auction)

          fill_in "Amount", with: invalid_attributes[:amount]
          click_button "Place Your Bid"

          expect(page).to have_text("Amount is not a number")
        end
      end
    end
  end
end