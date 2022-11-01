Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # MA: 'results' view route via URL
  resources :results
  resources :responses
  # MA: Application default view
  root "results#index"

end
