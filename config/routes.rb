Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :contracts
  resources :workers
  resources :banks
  resources :oue_organizations
  resources :orders
  resources :perssons
  resources :organizations
  resources :tovars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
