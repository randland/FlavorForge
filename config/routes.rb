Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do
    # Add dashboard for your models here
    resources :recipes

    root to: "recipes#index" # <--- Root route
  end

  resources :recipes, only: %i[show]

  # Defines the root path route ("/")
  root "recipes#index"
end
