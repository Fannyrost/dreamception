Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show, :edit, :update, :new, :create]

  resources :experiences, except: [:destroy] do
    resources :bookings, only: [:new, :create]

    member do
      patch "disabled ", to: 'experiences#disabled', as: 'disabled'
      patch "enabled ", to: 'experiences#enabled', as: 'enabled'
    end

    resources :reviews, only: [:new, :create]
  end

  root to: 'experiences#index'
end
