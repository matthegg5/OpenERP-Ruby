Rails.application.routes.draw do
  resources :part_revs
  devise_for :users
  get "account/login", to: "account#login", as: :login_page
  get "home/index"
  resources :companies
  root "home#index"           # For the Home link
  get "parts/index", to: "parts#part", as: :part
  post "parts/create", to: "parts#create", as: :part_create
  get "home/games", to: "home#games", as: :games
  get "about", to: "home#about"
end
