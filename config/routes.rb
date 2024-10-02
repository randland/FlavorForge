Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :recipes
  end

  resources :recipes, only: %i[show]

  # Defines the root path route ("/")
  root "recipes#index"
end
