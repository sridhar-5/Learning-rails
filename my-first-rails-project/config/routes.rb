Rails.application.routes.draw do
  get 'home/index'
  resources :books
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
