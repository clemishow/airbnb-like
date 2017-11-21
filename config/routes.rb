Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :workshops

  namespace :workshops do
    get ':workshop_id/books/new', to: 'books#new', as: 'book'
    get 'books', to: 'book#index'
    post ':workshop_id/books/new', to: 'books#create'
  end

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
