require 'rails_helper'

feature 'when visiting homepage' do
    scenario 'user sees text' do
        visit root_path
        expect(page).to have_text("Place Your Winning Bid!")
        expect(page).to have_text("Time is precious to be kicking tires all day long.")
        expect(page).to have_text("© AutoBid 2020")
    end
    scenario 'user sees links' do
        visit root_path
        expect(page).to have_link('bid now')
        expect(page).to have_link('Log in')
        expect(page).to have_link('Sign up')
        expect(page).not_to have_link('Log out')
    end
    scenario 'user sees an images' do
        visit root_path
        expect(page).to have_css("img[src*='logo.png']")
        expect(page).to have_css("img[src*='banner_img.png']")
    end
end