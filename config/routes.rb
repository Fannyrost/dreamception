Rails.application.routes.draw do
  root to: 'experiences#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :show, :edit, :update, :destroy ] do
    resources :booking, only: [:create, :new]
  end

  resources :visitors, except: :destroy

  resources :sellers do
    resources :experiences, only: [:create, :new]
  end

end
