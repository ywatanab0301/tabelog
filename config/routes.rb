Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users
  resources :shops do
    resources :reviews
  end

  resources :searches
end
