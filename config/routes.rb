Rails.application.routes.draw do
  resources :restaurants
  resources :pizzas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/restaurants", to: "restaurants#index"
end
