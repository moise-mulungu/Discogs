# frozen_string_literal: true

Rails.application.routes.draw do
  root 'genres#index'

  resources :genres do
    resources :artists, only: %i[new create]
  end

  resources :artists do
    resources :albums, only: %i[new create]
  end

  resources :artists, only: %i[edit update destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :albums do
    resources :songs, only: %i[new create]
  end
  resources :songs, only: %i[edit update destroy]

  # Defines the root path route ("/")
end
