Rails.application.routes.draw do
  devise_for :users
  # get 'visitors/show'
  root to: 'experiences#index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/:id', to:'users#show_user'

  resources :users, only: [:edit, :update, :new, :create] do
    resources :experiences, only: [:new]

    member do
      get 'seller', to: 'users#show_seller'
    end
  end

  resources :experiences, except: [:new, :create, :destroy, :create] do
    resources :bookings, only: [:new, :create]
  end


end
