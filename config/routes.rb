Rails.application.routes.draw do

  root to: 'home#index'
  resources :bikes
  resources :blogs
  resources :home, only: [:index]
  resources :service, only: [:index]
  resources :contact, only: [:index]
  resources :fitting, only: [:index]
end
