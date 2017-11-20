Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :workshops

  scope module: 'workshops' do 
    resources :search, only: [:index], controller: 'search'
  end

  namespace :admin do 
    resources :users
  end

  namespace :users do
    resources :workshops
  end

  root 'workshops#index', as: 'home'
end
