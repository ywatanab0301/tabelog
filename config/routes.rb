Rails.application.routes.draw do
  devise_for :users
  resources :shops
  resources :searches
  resources :users do
    resources :reviews
  end
end
