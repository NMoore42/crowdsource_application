Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #As you work through, please modify your resources to match only thoses needed:

  resources :follows
  resources :sections
  resources :stories
  resources :submissions, only: [:index, :show, :new]
  resources :users
  resources :votes
  resources :sessions
end
