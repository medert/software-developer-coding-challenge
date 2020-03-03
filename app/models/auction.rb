class Auction < ApplicationRecord

    validates :title, presence: true
    validates :make, presence: true
    validates :end_date, presence: true
    validates :current_price, presence: true
    validates :user_id, presence: true
end
