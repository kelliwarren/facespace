Facespace::Application.routes.draw do

  get "users/index"
  devise_for :users
  root "static#index"

  resources :users, only: [:index]

end
