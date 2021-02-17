Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'configuration', to: 'pages#configuration'
  devise_for :users
  
  get 'configuration/tags', to: 'tags#index'
  get 'configuration/tag_kinds', to: 'tag_kinds#index'
  get 'configuration/collaterl_kinds', to: 'collaterl_kinds#index'
  
  resources :tags
  resources :tag_kinds
  resources :collaterals 
  resources :collateral_kinds
  root to:'pages#home'
end
