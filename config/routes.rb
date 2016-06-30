Rails.application.routes.draw do

  root 'pages#index'

  # users
  get  'current_user'      =>  'users#show'
  devise_for :users

end
