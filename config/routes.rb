Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#index'

  resources :tweets, only: [:new, :create,:show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit, :update]
end
