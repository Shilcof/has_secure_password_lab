Rails.application.routes.draw do
  get 'sessions/login', to: 'sessions#new'
  post 'sessions/login', to: 'sessions#create'
  post 'sessions/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
