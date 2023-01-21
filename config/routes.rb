Rails.application.routes.draw do
  
  resources :collections
  devise_for :users
  resources :ranks
  resources :users
  resources :caterings
  resources :vouchers do
  	resources :issues, exept: [:index], controller:'vouchers/issues'
    
  end
  
  resources :mess_types
  resources :messes
  resources :scales
  
  root to: 'pages#home'

  get '/base_page' => 'pages#base_page'
  get '/free_mrr' => 'pages#free_mrr'
  get '/free_drt' => 'pages#free_drt'
  get '/about' => 'pages#about'

  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
