Rails.application.routes.draw do

  root 'pages#index'

  # users

  devise_for :users
  resources :users, only: [:show] do
    resources :lists, only: [:create, :edit, :update, :destroy]
  end

  resources :lists, only: [] do
    resources :todos, only: [:create, :edit, :update, :destroy]
  end

  as :user do
    get 'users', :to => 'users#show', :as => :user_root
  end

end
