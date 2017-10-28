class OauthsController < ApplicationController

	def authorize                                                                   
    options = {                                                                   
      site: 'https://slack.com/oauth/authorize'                                  
    }                                                                             
    client ||= OAuth2::Client.new(                                                
      '262549251568.264299299174',                                                 
      '57b1f4eb1c5e8dcac013da4a5a2a3048',                                         
      options                                                                     
    )                                                                             
    params = {                                                                    
      scope: 'users:read,team:read,identify',                                        
      redirect_uri: 'http://localhost:3002/oauth/callback'                       
    }                                                                             
    redirect_to client.auth_code.authorize_url(params)                            
  end                                                                             
end