Rails.application.routes.draw do

  root to: 'home#index'
  resources :bikes
  resources :blogs
  resources :users
  resources :home, only: [:index]
  resources :service, only: [:index]
  resources :contact, only: [:index]
  resources :fitting, only: [:index]
  resources :user_sessions, only: [ :new, :create, :destroy ]
  get 'login'  => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

end
