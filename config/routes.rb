# frozen_string_literal: true

Rails.application.routes.draw do
  get  "cv", to: "home#cv"
  post "",   to: "home#mail"

  root "home#index"
end
