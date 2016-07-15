Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # devise_for :users
  # resources :products, :users, :sessions, :categories
  resources :products, :categories

  root "products#index"
end
