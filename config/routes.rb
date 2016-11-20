Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  resources :orders
  resources :line_items
  resources :carts
  # get 'order_items/create'
  #
  # get 'order_items/update'
  #
  # get 'order_items/destroy'

  get 'carts/show'

  devise_for :users
  # devise_for :users
  # resources :products, :users, :sessions, :categories
  resources :products, :categories
  resource :cart, only: [:show, :update]
  # resources :order_items, only: [:create, :update, :destroy]
  root "products#index"
end
