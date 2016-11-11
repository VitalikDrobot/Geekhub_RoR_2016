Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :images

  root 'images#index'
  resources :users

  get 'sign_up', to: 'users#new'
  get 'sign_in', to: 'sessions#new', as: :sign_in
  post 'create', to: 'sessions#create', as: :sessions
  get 'log_out', to: 'sessions#destroy', as: :log_out
end
