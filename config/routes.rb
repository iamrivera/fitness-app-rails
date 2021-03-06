Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#home'

  get '/register', to: 'users#new'
  post '/users', to: 'users#create'
  

  get '/login', to: 'sessions#new' 
  post '/sessions', to: 'sessions#create'

end
