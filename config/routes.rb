Rails.application.routes.draw do
  resources :users

  root 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles

  get 'signup', to: 'users#new'
end
