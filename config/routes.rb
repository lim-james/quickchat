Rails.application.routes.draw do
  get 'user/index'

  root to: 'rooms#index'

  resources :rooms
  resources :chats
end
