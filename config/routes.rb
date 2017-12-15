Rails.application.routes.draw do
  get 'errors/not_found'

  get 'errors/internal_server_error'

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

  get 'users/profile' => 'users#show'

  namespace :admin do 
    resources :users
  end

  namespace :users do
    resources :workshops
  end

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  root 'workshops#index', as: 'home'
end
