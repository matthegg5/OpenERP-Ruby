Rails.application.routes.draw do
  # User Administration and Authentication
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users
  get "users/index", to: "users#index", as: :user_admin

  resources :part_revs
  get "home/index"
  resources :companies
  root "home#index"           # For the Home link
  get "parts/index", to: "parts#part", as: :part
  post "parts/create", to: "parts#create", as: :part_create
  get "home/games", to: "home#games", as: :games
  get "about", to: "home#about"
end
