class BidsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  # POST /bids
  def create
    @auction = Auction.find(params[:auction_id])
    @bid = @auction.bids.new(bid_params)
    @bid.user = current_user

    if @auction.id != current_user and @bid.save
      auction_update
      redirect_to @auction, notice: "Bid was successfully placed!"
    else
      redirect_to @auction, alert: @bid.errors.full_messages
    end
  end

  private

  # Update auction field after creating a bid
  def auction_update
    if @auction.realized_price < @bid.amount
      @auction.realized_price = @bid.amount
    end
    @auction.save
  end

  # Only allow a list of trusted parameters through.
  def bid_params
    params.require(:bid).permit(:amount)
  end
end
