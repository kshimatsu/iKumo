Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'users/registrations'}

  resources :babies do
    member do
      get 'timeline'
    end
  end

  resources :letters

  resources :photos


  get 'family' => 'babies#family'

  root 'babies#family'
end
