Rails.application.routes.draw do
  resources :users
  resources :appointments, only: [:index, :create]
  resources :cars, only: [:index, :show, :create]
  # get '/signup', to: 'authentication#create'
  post 'login', to: 'authentication#create'
end
