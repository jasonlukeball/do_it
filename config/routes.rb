Rails.application.routes.draw do

  root 'pages#index'

  # users

  devise_for :users
  resources :users, only: [:show] do
    resources :lists, only: [:create, :destroy]
  end

  resources :lists, only: [] do
    resources :todos, only: [:create, :destroy]
  end

end
