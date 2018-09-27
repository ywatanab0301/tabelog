Rails.application.routes.draw do
  root to: "shops#top_page"
  devise_for :users
  resources :users

  resources :searches
  resources :shops do
    collection do
      get :top_page
    end
    resources :reviews, only: [:new, :create, :edit, :update, :destroy, :show] do
      collection  do
        get :menu
        get :reviews
        get :sort_visit
        get :sort_popular
      end
    end
  end

  resources :following, only: [:show]
  resources :followers, only: [:show]
  resources :relationships, only: [:create, :destroy]

  post   '/like/:review_id' => 'likes#like',   as: 'like'
  delete '/like/:review_id' => 'likes#unlike', as: 'unlike'

end
