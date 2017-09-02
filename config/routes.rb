# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles, path: "blog"
  get  "cv", to: "home#cv"
  post "",   to: "home#mail"

  root "home#index"
end
