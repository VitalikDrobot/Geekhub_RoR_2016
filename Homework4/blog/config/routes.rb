Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :articles do
  		resources :comments
	end
  root 'articles#index'

  get 'sign_up', to: 'users#new'
  get 'sign_in', to: 'sessions#new', as: :sign_in
  post 'create', to: 'sessions#create', as: :sessions
  get 'log_out', to: 'sessions#destroy', as: :log_out

  resources :users
  
end
