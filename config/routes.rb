# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books
  resources :reviews
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
