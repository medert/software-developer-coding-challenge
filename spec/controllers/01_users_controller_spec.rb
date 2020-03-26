require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:valid_attributes) {
    {
    first_name: "Ali",
    last_name: "Baba",
    email: "free@gmail.com",
    password: "password",
    password_confirmation: "password",
    admin: false
    }
  }

  describe "GET #show" do
    it "returns a success response" do
      user = User.create!(valid_attributes)
      get :show, params: {id: user.to_param}
      expect(response).to be_successful
    end
  end
end
