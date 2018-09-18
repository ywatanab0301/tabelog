Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :shops
  resources :searches
  resources :users do
    resources :reviews
  end
end
