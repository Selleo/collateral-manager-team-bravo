Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'configuration', to: 'pages#configuration'
  devise_for :users
  # get "/collaterals", to:"collateral#index"
  resources :tag_kinds
  resources :collaterals 
  resources :collateral_kinds
  root to:'pages#home'
end
