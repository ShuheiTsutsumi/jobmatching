Rails.application.routes.draw do
  get 'jobs/index'

  get 'jobs/show'

  get 'jobs/new'

  get 'jobs/create'

  root to:'toppages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy' 

  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
  
  get 'regist', to: 'jobs#new'
  resources :jobs, only: [:show, :new, :create]

  get 'search', to: 'jobs#search'
end
