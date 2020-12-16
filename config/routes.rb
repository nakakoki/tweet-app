Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#index'

  resources :tweets, only: [:index, :new, :create]
  resources :users, only: [:show, :edit, :update]
end
