Rails.application.routes.draw do
  devise_for :users
  resources :shops
  resources :users do
    resources :reviews, only: [:new, :create]
  end
end
