Rails.application.routes.draw do
  unauthenticated do
    root to: 'home#index'
  end

  authenticated do
    root to: 'auctions#index'
  end

  devise_for :users
  resources :auctions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
