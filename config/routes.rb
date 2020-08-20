Rails.application.routes.draw do
  devise_for :users
  # get 'visitors/show'
  root to: 'experiences#index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/profile', to: "users#show"
  get 'users/:id', to:'users#show_user'

  resources :users, only: [:show, :edit, :update, :new, :create]

  resources :experiences, except: [:destroy] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end


end
