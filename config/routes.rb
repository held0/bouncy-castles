Rails.application.routes.draw do
  get 'avatars/edit', as: :avatar_edit
  patch 'avatars/update', as: :avatar_update
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'castles#index'
  get 'dashboard', to: 'pages#dashboard'
  resources :castles, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :show, :create, :edit, :update]
  end
  resources :bookings, only: :destroy
  resources :castles, only: :destroy, as: :delete_castle
  put "/bookings/:id/confirm", to: "bookings#confirm!", as: 'confirm_booking'
  # Usually we dont nest edit, update, show and destroy
  # Do it when we still have time
  # resources :bookings, only: [:destroy]
end
