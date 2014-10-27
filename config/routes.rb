Rails.application.routes.draw do
  devise_for :users
  resources :products

  get 'seller' => "products#seller"

  root to: 'products#index'
end
