Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # MA: Add view from results_controller.rb to routes for server access via URL
  resources :results
  # MA: Set given view as default when accessing server
  root "results#index"
end
