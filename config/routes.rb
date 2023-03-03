Rails.application.routes.draw do
  get 'screens/show'
  get 'theaters/index'
  root 'users#index'
  get 'users/edit'
  patch 'users/update'

  
  devise_for :users

  resources :theaters do 
    resources :screens
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
