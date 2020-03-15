class Auction < ApplicationRecord
    belongs_to :user, optional: true

    validates :title, presence: true
    validates :make, presence: true
    validates :current_price, presence: true
    validates :user_id, presence: true
end
