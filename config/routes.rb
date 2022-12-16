# frozen_string_literal: true

Rails.application.routes.draw do
  get 'albums/index'
  get 'albums/show'
  get 'albums/new'
  get 'albums/delete'
  # get 'genres/index'
 
  resources :genres
 
  resources :artists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "genres#index"
end
