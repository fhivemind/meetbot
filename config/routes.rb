Rails.application.routes.draw do

  root 'homes#index'

get    '/authorize', to: 'oauths#authorize'                                       
get    '/oauth/callback', to: 'homes#index' 

end
