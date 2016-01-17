Rails.application.routes.draw do
  resources :product_types
  resources :groups
  resources :licenses
  resources :categories
  resources :publishers
  resources :products
  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
