Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #As you work through, please modify your resources to match only thoses needed:

  resources :follows
  resources :sections
  resources :stories
  resources :submissions
  get '/users/register', to: 'users#new'
  get '/users/login', to: 'sessions#login'
  post '/users/login', to: 'sessions#create'
  # logging out from Jack
  delete '/users/logout', to 'sessions#logout'
  resources :users, only: [ :create, :destroy]
  resources :votes
  resources :sessions


end
