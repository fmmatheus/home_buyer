Rails.application.routes.draw do
  resources :agents
  resources :houses
  resources :neighborhoods

  # get 'home#index'
  get 'results', to: 'home#results'

  root 'home#index'
end
