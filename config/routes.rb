Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'users/registrations'}

  resources :letters
  resources :babies

  get 'family' => 'babies#family'

  root 'babies#index'
end
