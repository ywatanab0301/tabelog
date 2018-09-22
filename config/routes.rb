Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users
  resources :shops do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :searches
end
