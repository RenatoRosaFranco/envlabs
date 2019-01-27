# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users, :controllers => {
   omniauth_callbacks: 'users/omniauth_callbacks'
  }
  root to: 'home#index'

  resources :lessons
  resources :series do
  	resources :lessons, only: [:index, :show]
  end
  resource :contact,    only: [:index, :create]
  resource :profile,    only: [:index, :show, :update, :destroy]
  resources :blog do
  	resources :posts,   only: [:index, :show]
  end
end
