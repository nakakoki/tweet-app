Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#index'

  resources :tweets, only: [:new, :create]
  resources :users, only: [:show, :edit, :update]
end
