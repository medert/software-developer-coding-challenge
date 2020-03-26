class Auction < ApplicationRecord
  belongs_to  :user
  has_many    :bids
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :make, presence: true
  validates :starting_price, presence: true
  validates :realized_price, presence: true
  validates :user_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}
end
