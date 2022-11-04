Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # MA: 'responses' view route via URL
  resources :responses

  # Defines the root path route ("/")
  # MA: Application default view
  root "responses#index"
end
