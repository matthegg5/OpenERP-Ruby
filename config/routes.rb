Rails.application.routes.draw do
  devise_for :users

  # Custom route for login
  devise_scope :user do
    post "account/login", to: "devise/sessions#create", as: :account_session
  end
  get "account/login", to: "account#login", as: :login_page
  get "home/index"
  resources :companies
  root "home#index"           # For the Home link
  get "part", to: "home#part"
  get "games", to: "home#games"
  get "about", to: "home#about"
end
