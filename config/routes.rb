Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'castles#index'
  resources :castles, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :show, :create, :edit, :update]
  end
  # Usually we dont nest edit, update, show and destroy
  # Do it when we still have time
  # resources :bookings, only: [:destroy]
end
