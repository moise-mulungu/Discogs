# frozen_string_literal: true

Rails.application.routes.draw do
  
  resources :genres do
    resources :artists, only: [:new, :create]
  end
  
  resources :artists do
    resources :albums, only: [:new, :create]
  end
  
  resources :artists, only: [:edit, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :albums do
    resources :songs, only: [:new, :create]
  end
  resources :songs, only: [:edit, :update, :destroy]

  # Defines the root path route ("/")
  root "genres#index"
end
