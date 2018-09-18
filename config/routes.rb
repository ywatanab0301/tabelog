Rails.application.routes.draw do
  root to: "shops#new"
  devise_for :users
  resources :shops
  get 'shops/show/menu' => 'shops#show_menu'
  get 'shops/show/reviews' => 'shops#show_reviews'
  resources :searches
  resources :users do
    resources :reviews
  end
end
