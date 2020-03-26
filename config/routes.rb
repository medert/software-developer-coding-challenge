Rails.application.routes.draw do

  root to: 'home#index'

  devise_for :users
  resources :users, only: [:show]

  resources :auctions do
    resources :bids, only: [:create]
  end

end
