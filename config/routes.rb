Rails.application.routes.draw do
  resources :users
  resources :appointments, only: [:index, :create]
  resources :cars, only: [:index, :show]
end
