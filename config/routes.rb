Rails.application.routes.draw do

  root 'homes#index'

  get  '/authorize', to: 'oauths#authorize'                                       
  get  '/oauth/callback', to: 'homes#index' 

  namespace :api, defaults: { format: 'json' } do
    resources :tokens
  end

end
