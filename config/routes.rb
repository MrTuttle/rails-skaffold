Rails.application.routes.draw do
  root to: "flats#index"
  resources :flats
  #root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
