Rails.application.routes.draw do
  resources :capitals
  resources :attractions
  resources :countries

  root 'countries#index'
end
