Rails.application.routes.draw do
  get 'cv',  to: 'home#cv'

  root 'home#index'
end
