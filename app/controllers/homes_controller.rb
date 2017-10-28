class HomesController < ApplicationController
  
  def index
    if params["code"]
      Token.create(token_data: params["code"])
    end
  end
end
