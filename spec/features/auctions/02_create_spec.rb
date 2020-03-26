require 'rails_helper'

RSpec.feature "Auctions", type: :feature do
  let(:user) {create(:user) }
  let(:valid_attributes) {attributes_for(:auction)}
  let(:invalid_attributes) { attributes_for(:auction, :invalid)}

  describe "Create Auction" do
    before { sign_in_as(user) }
    context "with valid attributes" do
      it "visits auction/show and displays message 'Auction was successfully created'" do
        visit new_auction_path

        fill_in "Title", with: valid_attributes[:title]
        fill_in "Make", with: valid_attributes[:make]
        fill_in "Starting Price", with: valid_attributes[:starting_price]

        click_button "Start Auction"

        expect(current_path).to eq(auction_path(Auction.last))
        expect(page).to have_text("Auction was successfully created")
      end
    end

    context "with invalid attributes" do
      it "it shows a message 'auction was not created'" do
        visit new_auction_path

        fill_in "Title", with: invalid_attributes[:title]
        fill_in "Make", with: invalid_attributes[:make]
        fill_in "Starting Price", with: invalid_attributes[:starting_price]

        click_button "Start Auction"

        expect(page).to have_text("Title can't be blank")
      end
    end
  end
end