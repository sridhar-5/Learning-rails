Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#new"
  resources :users, only: [:create, :new, :edit, :update, :destroy, :show]
  resources :tasks

end
