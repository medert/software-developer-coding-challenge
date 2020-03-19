class Auction < ApplicationRecord
    belongs_to :user, optional: true

    validates :title, presence: true
    validates :make, presence: true, numericality: true
    validates :current_price, presence: true, numericality: true
    validates :user_id, presence: true, numericality: true
end
