Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get  '/signup',  to: 'users#new'

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :account_activations, only: [:edit]
  root 'static_pages#home'
end
