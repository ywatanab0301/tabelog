Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users do
    get 'show_all' => 'users#show_all'
  end

  resources :searches
  resources :shops do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy, :show]
    get 'menu' => 'shops#show_menu'
    get 'reviews' => 'shops#show_reviews'
    get 'sort_visit' => 'shops#sort_visit'
    get 'sort_popular' => 'shops#sort_popular'
  end

  post   '/like/:review_id' => 'likes#like',   as: 'like'
  delete '/like/:review_id' => 'likes#unlike', as: 'unlike'

end
