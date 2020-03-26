class AuctionsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create,:destroy]
  before_action :set_auction, only: [:show, :edit, :update, :destroy]

  # GET /auctions
  def index
    @auctions = Auction.all
  end

  # GET /auctions/1
  def show
    @bid = Bid.new
    auction_bids = Bid.where(auction_id: set_auction)
    @bids = auction_bids.order(created_at: :desc)
  end

  # GET /auctions/new
  def new
    @auction = Auction.new
  end

  # GET /auctions/1/edit
  def edit
  end

  # POST /auctions
  def create
    @auction = Auction.new(auction_params)
    @auction.user_id = current_user.id
    set_realized_price
    if @auction.save
      redirect_to @auction, notice: 'Auction was successfully created!'
    else
      flash[:alert] = @auction.errors.full_messages
      render 'new'
    end
  end

  # PATCH/PUT /auctions/1
  def update
    if @auction.update(auction_params)
      redirect_to @auction, notice: 'Auction was successfully updated!'
    else
      render :edit
    end
  end

  # DELETE /auctions/1
  def destroy
    @auction.destroy
    redirect_to auctions_url, notice: 'Auction was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction
      @auction ||= Auction.find(params[:id])
    end

    # Assing value to a auction field
    def set_realized_price
      @auction.realized_price = @auction.starting_price
    end

    # Only allow a list of trusted parameters through.
    def auction_params
      params.fetch(:auction, {}).permit(:title, :make, :starting_price, :image)
    end
end
