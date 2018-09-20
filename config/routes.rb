Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :shops do
    get 'menu' => 'shops#show_menu'
    get 'reviews' => 'shops#show_reviews'
  end
  resources :searches
  resources :users do
    resources :reviews, only: [:new, :create]
  end
end
