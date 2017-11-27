Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :workshops

  namespace :workshops do
    get ':workshop_id/books/new' => 'books#new', as: 'new_book'
    get 'books/all' => 'books#index'
    get 'book/:id' => 'books#show', as: 'show_book'
    delete 'book/:id' => 'books#delete'
    post ':workshop_id/books/new' => 'books#create'
    get 'search/results' => 'search#index'

  end

  namespace :admin do 
    resources :users
  end

  namespace :users do
    resources :workshops
  end

  root 'workshops#index', as: 'home'
end
