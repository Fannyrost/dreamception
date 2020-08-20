Rails.application.routes.draw do
  devise_for :users
  # get 'visitors/show'
  root to: 'experiences#index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :users, only: [:show, :edit, :update, :new, :create] 

  resources :experiences, except: [:destroy] do
    resources :bookings, only: [:new, :create]
  end


end
