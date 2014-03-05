Facespace::Application.routes.draw do

  get "users/index"
  devise_for :users, controllers: {registrations: 'registrations'}
  root "static#index"
  # get '/welcome' => 'static#welcome'
  # get '/thanks' => 'static#thanks'
  resources :users, only: [:index]

  match '/contact' => "static#contact", via: [:get, :post] #search forms use get but use post when you send data


end
