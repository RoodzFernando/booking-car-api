# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[index. create]
  resources :appointments, only: %i[show create]
  resources :cars, only: %i[index show]
  post 'login', to: 'authentication#create'
end
