# frozen_string_literal: true

Rails.application.routes.draw do
  get 'artists/index'
  get 'artists/show'
  get 'artists/new'
  get 'artists/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
