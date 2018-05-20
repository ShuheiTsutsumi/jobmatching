Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to:'toppages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'login', to: 'session#new'
  post 'login', to: 'session#reate'
  delete 'logout', to: 'session#destroy' 

  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
end
