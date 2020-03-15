require 'rails_helper'

feature 'Sign up', %{
    As an new user
    I want to sign up
    So that i can place a bid or list a car
} do
    # ACCEPTANCE CRITERIA
    # * I Must enter my first name
    # * I Must enter my last name
    # * I Must enter my email address
    # * I must set a desired password
    # * I must confirm the password
    # * If i do not enter email or password, i get an error message
    # * If i specify valid information, i am able to create an account
    let(:user){create(:user)}

    scenario "a new user visits a regitration page and sees 'Sign up' button" do
        visit new_user_registration_path

        expect(page).to have_button("Sign up")
        expect(page).to have_link("Log in")
        expect(page).not_to have_link("Log out")
    end

    scenario "a new user visits a regitration page and clicks
              on 'Sign up' button without filling from fields" do
        visit new_user_registration_path
        click_button 'Sign up'

        expect(page).to have_content("Email can't be blank")
        expect(page).to have_content("Email is invalid")
        expect(page).to have_content("Password can't be blank")
        expect(page).to have_link("Log in")
        expect(page).not_to have_link("Log out")
    end

    let(:user){build(:user)}
    scenario 'a new user specifies valid name, last name, email and password' do
        visit new_user_registration_path
        fill_in 'First Name', with: user.first_name
        fill_in 'Last Name', with: user.last_name
        fill_in 'Email', with: user.email
        fill_in 'Password', with: user.password
        fill_in 'Password confirmation', with: user.password_confirmation
        click_button 'Sign up'
        expect(page).to have_content("Welcome! You have signed up successfully.")
        expect(page).to have_link("Log out")
        expect(page).not_to have_content("Email can't be blank")
        expect(page).not_to have_link("Log in")
    end

    scenario 'password confirmation does not match confirmation' do
        visit root_path
        click_link 'Sign up'

        fill_in 'First Name', with: user.first_name
        fill_in 'Last Name', with: user.last_name
        fill_in 'Email', with: user.email
        fill_in 'Password', with: '123PAssword'
        fill_in 'Password confirmation', with: 'Secret3456'

        click_button 'Sign up'

        expect(page).to have_content("Password confirmation doesn't match Password")
        expect(page).to_not have_link("Log out")
    end
end