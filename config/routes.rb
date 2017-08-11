Rails.application.routes.draw do
  get  'cv',   to: 'home#cv'
  post '', to: 'home#mail'

  root 'home#index'
end
