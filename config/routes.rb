Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users

  resources :searches
  resources :shops do
    resources :reviews, only: [:new, :create]
    get 'menu' => 'shops#show_menu'
    get 'reviews' => 'shops#show_reviews'
  end

  post   '/like/:review_id' => 'likes#like',   as: 'like'
  delete '/like/:review_id' => 'likes#unlike', as: 'unlike'

end
