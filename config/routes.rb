Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products, :users, :sessions, :categories

  root "products#index"
end
