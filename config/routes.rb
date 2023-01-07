Rails.application.routes.draw do
  devise_for :users
  resources :ranks
  resources :users
  resources :caterings
  resources :bases
  resources :vouchers do
  	resources :issues, exept: [:index], controller:'vouchers/issues'
  end
  
  resources :mess_types
  resources :messes
  resources :scales
  root to: 'pages#home'

  get 'pages/about'

  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
