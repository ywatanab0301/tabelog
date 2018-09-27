Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users

  resources :searches
  resources :shops do
    member do
      get :show_menu
      get :show_reviews
      get :sort_visit
      get :sort_popular
      get :sort_lunch
      get :sort_dinner
    end
    resources :reviews, only: [:new, :create, :edit, :update, :destroy, :show]
  end

  resources :following, only: [:show]
  resources :followers, only: [:show]
  resources :relationships, only: [:create, :destroy]

  post   '/like/:review_id' => 'likes#like',   as: 'like'
  delete '/like/:review_id' => 'likes#unlike', as: 'unlike'

end
