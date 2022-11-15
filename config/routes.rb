Rails.application.routes.draw do
  root "users#index"

  resources :users do
    resources :comments
  end
  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/pay", to: "pay#index"
  post "/pay", to: "pay#show_change"
  get "/fibonacci", to: "fibonacci#index"
  post "/fibonacci", to: "fibonacci#generate_items"
end

# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
# end
