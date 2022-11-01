Rails.application.routes.draw do
  resources :responses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # MA: 'results' view route via URL
  resources :results
  # MA: Application default view
  root "results#index"
end
