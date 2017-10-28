Rails.application.routes.draw do

  root 'homes#index'

get    '/authorize', to: 'oauth#authorize'                                       
get    '/oauth/callback', to: 'oauth#authorize_callback' 

end
