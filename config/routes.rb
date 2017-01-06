Rails.application.routes.draw do

  root 'welcomes#home'
  resources :users
  resources :sessions
  post '/sessions/new', to: 'sessions#create'

  # get '/new', to: 'users#new', as: 'signup'
  # post '/new', to: 'users#create'
  # get '/login', to: 'sessions#new', as: 'login'
  # post '/login', to: 'sessions#create'

end
