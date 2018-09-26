Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users do
    get 'show_all' => 'users#show_all'
    get 'show_gone' => 'users#show_gone'
    get 'show_wannago' => 'users#show_wannago'
  end

  resources :searches
  resources :shops do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy, :show]
    get 'menu' => 'shops#show_menu'
    get 'reviews' => 'shops#show_reviews'
    get 'sort_visit' => 'shops#sort_visit'
    get 'sort_popular' => 'shops#sort_popular'
  end

  resources :following, only: [:show]
  resources :followers, only: [:show]
  resources :relationships, only: [:create, :destroy]

  post   '/like/:review_id' => 'likes#like',   as: 'like'
  delete '/like/:review_id' => 'likes#unlike', as: 'unlike'

end
