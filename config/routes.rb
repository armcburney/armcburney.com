Rails.application.routes.draw do
  get 'music',    to: 'home#music'
  get 'projects', to: 'home#projects'
  get 'engsoc',   to: 'home#engsoc'
  get 'contact',  to: 'home#contact'

  root 'home#index'
end
