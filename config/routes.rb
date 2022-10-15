Rails.application.routes.draw do
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # route to handle SessionsController  login action
  post "/login", to: "sessions#create"

  # route to handle SessionsController logout action
  delete "/logout", to: "sessions#destroy"

  # Route to retrieve the user's data from the database using the session hash:
  get "/me", to: "users#show"
  
end
