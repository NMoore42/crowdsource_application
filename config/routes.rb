Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
  
=======
  #As you work through, please modify your resources to match only thoses needed:

  resources :follows
  resources :sections
  resources :stories
  resources :submissions
  get '/users/register', to: 'users#new'
  get '/users/login', to: 'users#login'
  resources :users, only: [ :create, :destroy]
  resources :votes
  resources :sessions


>>>>>>> 2e661a2b24a1cfbafff3a8981d881b04ef14f4bf
end
