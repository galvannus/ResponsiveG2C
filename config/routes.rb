Rails.application.routes.draw do
  resources :payments
  resources :contracts
  resources :categories
  resources :services
  devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticated :user do
  	root to: "home#index"
  end

  unauthenticated :user do
  	root 'home#unregistered'
  end
end
