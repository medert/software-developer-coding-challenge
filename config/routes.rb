Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users, only: [:show]

  resources :auctions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
