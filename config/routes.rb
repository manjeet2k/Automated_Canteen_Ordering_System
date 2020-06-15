Rails.application.routes.draw do
  
  root 'pages#home'

  resources :companies
  resources :users, except: [:new]
  resources :employees
  resources :chefs
  resources :food_stores
  resources :food_items

  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'error', to: "pages#show"


end
