Rails.application.routes.draw do
  resources :attractions
  resources :countries

  root 'countries#index'
end
