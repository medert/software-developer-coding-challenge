class Bid < ApplicationRecord
    belongs_to :auction
    belongs_to :user

    validates :amount, presence: true, numericality: true
    validates :auction_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}
    validates :user_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}

end
