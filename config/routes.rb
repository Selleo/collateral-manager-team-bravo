Rails.application.routes.draw do
  devise_for :users
  # get "/collaterals", to:"collateral#index"
  resources :collaterals
end
