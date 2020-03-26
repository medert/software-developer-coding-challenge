require 'rails_helper'

RSpec.describe AuctionsController, type: :controller do
  let(:user) {create(:user)}

  let(:valid_attributes) {
    {
    title: "Subaru Forester",
    make: "Subaru",
    starting_price: 10.0,
    realized_price: 12.0,
    image: Rails.root.join("spec/support/Subaru.jpg").open,
    user_id: user.id
    }
  }

  let(:invalid_attributes) {
    {
    title: nil,
    make: "Subaru",
    starting_price: 10.0,
    realized_price: 12.0,
    user_id: user.id
    }
  }

  before {sign_in(user)}

  describe "GET #index" do
    it "returns a success response" do
      Auction.create!(valid_attributes)
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      auction = Auction.create!(valid_attributes)
      get :show, params: {id: auction.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      sign_in(user)
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      auction = Auction.create!(valid_attributes)
      get :edit, params: {id: auction.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Auction" do
        expect {
          post :create, params: {auction: valid_attributes}
        }.to change(Auction, :count).by(1)
      end

      it "redirects to the created auction" do
        post :create, params: {auction: valid_attributes}
        expect(response).to redirect_to(Auction.last)
      end
      it "sets a notice message" do
				post :create, params: {auction: valid_attributes}
				expect(:notice).to be
			end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {auction: invalid_attributes}
        expect(response).to be_successful
      end
      it "sets a notice message" do
				post :create, params: {auction: invalid_attributes}
				expect(:alert).to be
			end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          title: "BMW 4",
          make: "BMW",
          starting_price: 12.0,
          realized_price: 24
        }
      }

      it "updates the requested auction" do
        auction = Auction.create!(valid_attributes)
        put :update, params: {id: auction.to_param, auction: new_attributes}
        auction.reload
        expect(auction.title).to eq('BMW 4')
      end

      it "redirects to the auction" do
        auction = Auction.create!(valid_attributes)
        put :update, params: {id: auction.to_param, auction: valid_attributes}
        expect(response).to redirect_to(auction)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        auction = Auction.create!(valid_attributes)
        put :update, params: {id: auction.to_param, auction: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested auction" do
      auction = Auction.create!(valid_attributes)
      expect {
        delete :destroy, params: {id: auction.to_param}
      }.to change(Auction, :count).by(-1)
    end

    it "redirects to the auctions list" do
      auction = Auction.create!(valid_attributes)
      delete :destroy, params: {id: auction.to_param}
      expect(response).to redirect_to(auctions_url)
    end
  end

end
