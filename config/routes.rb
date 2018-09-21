Rails.application.routes.draw do
  root to: "searches#index"
  devise_for :users
  resources :users

  resources :searches
  resources :shops do
    resources :reviews
  end

  post   '/like/:review_id' => 'likes#like',   as: 'like'
  delete '/like/:review_id' => 'likes#unlike', as: 'unlike'

end
