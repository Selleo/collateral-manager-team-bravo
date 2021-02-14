Rails.application.routes.draw do
  get 'pages/home', to: 'pages#home'
  get 'pages/about', to: 'pages#about'
  devise_for :users
  # get "/collaterals", to:"collateral#index"
  resources :collaterals
  root to:'pages#home'
end
