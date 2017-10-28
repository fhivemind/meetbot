class HomesController < ApplicationController
  
  def index
  end

  def google_aut
    if params["code"]
      Token.create(slack_token_data: params["code"])
    end
  end
end
