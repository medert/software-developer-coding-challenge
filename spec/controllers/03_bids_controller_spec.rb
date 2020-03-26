require 'rails_helper'

RSpec.describe BidsController, type: :controller do
	let(:user){create(:user)}
	let(:auction){create(:auction,{realized_price: 50})}

	let(:valid_attributes) {{amount: 100}}
  let(:invalid_attributes) {{amount: 10}}
  let(:valid_request) {post :create, params: {auction_id: auction.id, bid: valid_attributes}}
  let(:invalid_request) {post :create, params: {auction_id: auction.id, bid: invalid_attributes}}

	before {sign_in(user)}

	describe "POST #create" do
		context "with valid params" do
			it "creates a new bid" do
				expect{valid_request}.to change{Bid.count}.by(1)
			end

			it "redirects to the auction show page" do
				valid_request
				expect(response).to redirect_to(auction_path(auction))
			end

			it "assigns a newly created bid as @bid" do
				valid_request

				expect(assigns(:bid)).to be_a(Bid)
				expect(assigns(:bid)).to be_persisted
			end

			it "sets a flash notice message" do
				valid_request
				expect(flash[:notice]).to be
			end
		end

		context "with invalid params" do

			it "fails to create a new bid" do
				expect{invalid_request}.to change{Bid.count}.by(0)
			end

			it "assigns a newly created but unsaved bid as @bid" do
				invalid_request
				expect(assigns(:bid)).to be_a_new(Bid)
			end

			it "reders auction show page" do
				invalid_request
				expect(response).to redirect_to(auction_path(auction))
			end

			it "sets a flash notice message" do
				invalid_request
				expect(flash[:alert]).to be
			end
		end
	end
end
