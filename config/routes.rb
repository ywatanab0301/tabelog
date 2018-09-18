Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :shops
  resources :searches
  resources :users, shallow:true do
    resources :reviews, only: [:new, :create, :show] do
      resources :likes, only: [:create, :destroy]
    end
  end

  # post   '/like/:review_id' => 'likes#like',   as: 'like'
  # delete '/like/:review_id' => 'likes#unlike', as: 'unlike'

end
