class HomesController < ApplicationController
  
  def index
    puts params["code"]
  end
end
