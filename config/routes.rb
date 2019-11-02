Rails.application.routes.draw do
  resources :capitals
  resources :attractions
  resources :countries

  root             'attractions#index'
  get 'attractions'    => 'attractions#index'
  get 'countries'   => 'countries#index'
  get 'capitals' => 'capitals#index'
end
