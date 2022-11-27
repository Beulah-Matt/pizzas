Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :delete] 
  resources :pizzas 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  
end
