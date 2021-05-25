Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do 
    resources :trainers 
  end
  resources :trainers, :workouts, :users, :exercises 

  root 'users#new'
end
