Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: "toppages#index"
  root to: "tasks#index"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  get "signup", to: "users#new"  

  resources :users
  resources :tasks
  
#---------------------------------------
#  resources :users, only: [:index, :show, :create]
#  resources :tasks, only: [:create, :destroy]
#---------------------------------------  
end
