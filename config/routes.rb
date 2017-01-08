Rails.application.routes.draw do

  root 'welcomes#home'
  # resources :users
  # resources :sessions
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/sessions', to: 'sessions#create'
  get '/sessions/destroy', to: 'sessions#destroy', as: 'logout'

  get '/users/new', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/attractions', to: 'attractions#index', as: 'attractions'
  get '/attractions/new', to: 'attractions#new'
  get '/attractions/:id', to: 'attractions#show', as: 'attraction'
  post '/users/:id/update', to: 'users#update', as: 'update_user'

  post '/attractions', to: 'attractions#create'
  get '/attractions/:id/edit', to: 'attractions#edit', as: 'edit'
  patch '/attractions/:id', to: 'attractions#update'


  # get '/new', to: 'users#new', as: 'signup'
  # post '/new', to: 'users#create'
  # get '/login', to: 'sessions#new', as: 'login'
  # post '/login', to: 'sessions#create'

end
