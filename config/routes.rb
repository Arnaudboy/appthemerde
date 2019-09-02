Rails.application.routes.draw do
  devise_for :users
  resources :carts
  resources :items
  root "items#index"
end
