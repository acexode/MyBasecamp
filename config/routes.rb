Rails.application.routes.draw do 
  # resources :comments
  # resources :disquxes
  root 'home#index'
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :projects do
    resources :disquxes do
      resources :comments
    end
  end
  resources :teams
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
