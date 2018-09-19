Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :shops
  resources :searches
  resources :users do
    member do
      get :following, :followers
    end
    resources :reviews, only: [:new, :create]
  end
  resources :relationships, only:[:create, :destroy]
end
