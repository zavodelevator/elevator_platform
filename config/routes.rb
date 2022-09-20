Rails.application.routes.draw do
  resources :workers
  resources :banks
  resources :oue_organizations
  resources :orders
  resources :contracts
  resources :perssons
  resources :organizations
  resources :tovars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
