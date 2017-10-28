Rails.application.routes.draw do

  root 'homes#index'

  resources :bot_authorizations, only: [:index]

end
