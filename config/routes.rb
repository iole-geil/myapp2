Rails.application.routes.draw do
  root "users#index"

  resources :users do
    resources :comments
  end
  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end