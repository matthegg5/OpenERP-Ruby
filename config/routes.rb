Rails.application.routes.draw do
  get "home/index"
  resources :companies
  root 'home#index'           # For the Home link
  get 'part', to: 'home#part'
  get 'games', to: 'home#games'
  get 'about', to: 'home#about'
  #devise_for :users          # Devise routes
end
