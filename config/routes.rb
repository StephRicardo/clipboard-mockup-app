Rails.application.routes.draw do
  resources :stars, only: [:index]
  resources :designs
  resources :users

  root 'home#index'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  match 'star', to: 'stars#star', via: :post
  match 'unstar', to: 'stars#unstar', via: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
