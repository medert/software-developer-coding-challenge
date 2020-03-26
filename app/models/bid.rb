class Bid < ApplicationRecord
  belongs_to :auction
  belongs_to :user

  validates :amount, presence: true, numericality: {greater_than: :auction_realized_price}
  validates :auction_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}
  validates :user_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}

  def auction_realized_price
      auction.realized_price
  end
end
