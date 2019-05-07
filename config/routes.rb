Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #As you work through, please modify your resources to match only thoses needed:

  get '/register', to: 'users#new', as: 'register'
  get '/login', to: 'sessions#new', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  resources :follows
  resources :sections
  resources :stories
  resources :submissions
  resources :users, only: [ :create, :destroy, :show]
  resources :votes
  resources :sessions, only: [:create, :destroy]


end
