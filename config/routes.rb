Rails.application.routes.draw do
  root to: "shops#top_page"
  devise_for :users
  resources :users

  resources :searches
  resources :shops do
    get 'top_page', on: :collection
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
