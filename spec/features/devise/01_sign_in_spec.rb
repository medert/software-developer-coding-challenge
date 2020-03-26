require 'rails_helper'

feature 'Sign In', %{
  As an unauthenticated user
  I want to sign in
  So that i can post place a bid or list a car
} do
  # ACCEPTANCE CRITERIA
  # * I Must enter a user's email address
  # * I must enter a user's password
  # * If i do not enter email or password, i get an error message
  # * If i specify valid information, i able to access my account
  let(:user){create(:user)}

  scenario 'an existing user specifies a valid email and password' do
    visit new_user_session_path
    sign_in_as(user)

    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_link("Log out")
    expect(page).not_to have_link("Log in")
    expect(page).not_to have_link("Sing up")
  end

  scenario 'an existing user specifies a invalid email or password' do
    visit new_user_session_path
    fill_in 'Email', with: 'email'
    fill_in 'Password', with: '1'
    click_button 'Log in'

    expect(page).to have_content("Invalid Email or password.")
    expect(page).not_to have_content("Log out")
  end
end
