Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :workshops

  namespace :admin do 
    resources :users
  end
  namespace :users do
    resources :workshops
  end

  root 'workshops#index', as: 'home'
end
