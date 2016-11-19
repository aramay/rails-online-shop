Rails.application.routes.draw do

  resources :line_items
  resources :carts
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  # devise_for :users
  # resources :products, :users, :sessions, :categories
  resources :products, :categories
  resource :cart, only: [:show, :update]
  resources :order_items, only: [:create, :update, :destroy]
  root "products#index"
end
