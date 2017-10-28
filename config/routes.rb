Rails.application.routes.draw do

  root 'homes#index'

  get  '/authorize', to: 'oauths#authorize'                                       
  get  '/oauth/callback', to: 'homes#google_aut' 

  namespace :api, defaults: { format: 'json' } do
    resources :tokens
  end

  get '/redirect', to: 'google_calendars#redirect', as: 'redirect'
  get '/callback', to: 'google_calendars#callback', as: 'callback'
  get '/calendars', to: 'google_calendars#calendars', as: 'calendars'

end
