Facespace::Application.routes.draw do

  get "users/index"
  devise_for :users, controllers: {registrations: 'registrations'}
  root "static#index"
  get '/welcome' => 'static#welcome'
  resources :users, only: [:index]

end
