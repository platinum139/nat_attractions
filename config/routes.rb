Rails.application.routes.draw do
  get 'users/new'
  resources :capitals
  resources :attractions
  resources :countries
  resources :users

  root             'attractions#index'
  get 'attractions'    => 'attractions#index'
  get 'countries'   => 'countries#index'
  get 'capitals' => 'capitals#index'
  get 'signup' => 'users#new'
end
