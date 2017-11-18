Rails.application.routes.draw do
  devise_for :users
  resources :workshops
  root 'workshops#index', as: 'home'
end
