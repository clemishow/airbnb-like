Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :workshops

  root 'workshops#index', as: 'home'

  resources :users, as: 'users'
end
