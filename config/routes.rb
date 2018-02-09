Rails.application.routes.draw do

  root to: 'rooms#index'

  get '/user', to: 'users#index'
  get '/chats', to: 'chats#index'

  resources :rooms
  resources :chats
  resources :users
end
