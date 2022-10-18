Rails.application.routes.draw do
  get 'contact', to: 'contact#index'

  # get 'portfolios/index'
  resources :portfolios

  # get 'skills', to: 'skills#index'
  resources :skills

  # get 'services', to: 'services#index'
  # get 'services/:id', to: 'services#show'
  resources :services
  
  get 'about', to: 'aboutme#index'
  get 'home', to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
