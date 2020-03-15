require 'rails_helper'

feature 'visit homepage' do
    scenario 'user sees slogan' do
        visit root_path
        expect(page).to have_text("Place Your Winning Bid!")
    end
end