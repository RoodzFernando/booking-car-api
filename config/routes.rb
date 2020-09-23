Rails.application.routes.draw do
  resources :users
  resources :appointments, only: [:show, :create]
  resources :cars, only: [:index, :show]
  post 'login', to: 'authentication#create'
end
