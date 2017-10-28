class OauthController < ApplicationController

	def authorize                                                                   
    options = {                                                                   
      site: 'https://slack.com/oauth/authorize'                                  
    }                                                                             
    client ||= OAuth2::Client.new(                                                
      'client-id',                                                 
      'client-secret',                                         
      options                                                                     
    )                                                                             
    params = {                                                                    
      scope: 'incoming-webhook, commands',                                        
      redirect_uri: 'https://localhost:3000/oauth/callback'                       
    }                                                                             
    redirect_to client.auth_code.authorize_url(params)                            
  end                                                                             

  def authorize_callback                                                          
    puts params["code"] 
    redirect_to root_url                                                              
  end 

end