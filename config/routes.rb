Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users
  resources :searches
  resources :shops do
    resources :reviews, only: [:new, :create]
  end
  resources :users do
    member do
     get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
end
