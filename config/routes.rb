Rails.application.routes.draw do
  resources :bikes, only: [:index, :new, :create, :show]
end
