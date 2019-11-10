Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  resources :capitals
  resources :attractions
  resources :countries
  resources :users

  root             'sessions#new'
  get 'attractions'    => 'attractions#index'
  get 'countries'   => 'countries#index'
  get 'capitals' => 'capitals#index'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
