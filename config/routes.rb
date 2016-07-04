Rails.application.routes.draw do

  root 'pages#index'

  # users

  devise_for :users
  resources :users, only: [:show]

end
