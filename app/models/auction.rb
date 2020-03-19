class Auction < ApplicationRecord
    belongs_to :user, optional: true

    validates :title, presence: true
    validates :make, presence: true
    validates :current_price, presence: true
    validates :user_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}
end
