Rails.application.routes.draw do
  root to: "shops#new"
  devise_for :users
  resources :shops
  resources :users do
    resources :reviews
  end
end
