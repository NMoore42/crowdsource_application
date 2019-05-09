Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #As you work through, please modify your resources to match only thoses needed:

  get '/register', to: 'users#new', as: 'register'
  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  resources :follows
  get '/stories/all', to: 'stories#all', as: 'all'
  get '/stories/:id/full', to: 'stories#full', as: 'full'
  resources :stories do
      resources :sections do
        resources :submissions
      end
  end
  resources :users, only: [ :create, :destroy, :show]
  resources :votes
  resources :sessions, only: [:destroy]



end

# <% <%= current_user ? <a href="/logout"></a> : <a href="/login"></a>%> %>
