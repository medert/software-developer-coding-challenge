require 'rails_helper'

feature 'Log out', %{
  As an authenticated user
  I want to sign out
  So that no one can use my profile to post/delete auctions
  } do
  # ACCEPTANCE CRITERIA
  # * after log in, i can log out
  # * once i log out, i get a notice that my profile
  # * has beed forgotten on the machine i am using
  let(:user){create(:user)}

  scenario 'authenticated user logs out' do
    sign_in_as(user)
    expect(page).to have_content("Signed in successfully.")
    click_link "Log out"
    expect(page).to have_content("Signed out successfully.")
  end

  scenario 'unauthenticated user attempts to log out' do
    visit root_path
    expect(page).to_not have_link("Log out")
  end
end