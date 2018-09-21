Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users
  resources :shops do
    resources :reviews, only: [:new, :create]
    get 'menu' => 'shops#show_menu'
    get 'reviews' => 'shops#show_reviews'
  end

  resources :searches
end
