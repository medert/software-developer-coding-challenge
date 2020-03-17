require "rails_helper"

# I want to view a list of auctions
# So that I can pick auction to place a bid

# TO DO : As an authenticated user

feature "authenticated user can view auctions" do
    let!(:user){create(:user)}
    let!(:auctions){create_list :auction, 2, user: user}
    scenario "user signs in and views auctions on root_path" do
        sign_in_as(user)

        expect(page).to have_link("Auctions")
        expect(page).to have_content("Active Auctions")
        expect(page).to have_link("New Auction")


        auctions.each do |auction|
            expect(page).to have_content(auction.title)
            expect(page).to have_content(auction.make)
            expect(page).to have_content(auction.current_price)
        end
    end
end
