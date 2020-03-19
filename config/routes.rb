Rails.application.routes.draw do

  root to:    'home#index'

  devise_for  :users
  resources   :auctions
  resources   :users, only: [:show]
  resources   :bids
end
