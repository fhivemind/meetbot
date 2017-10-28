class HomesController < ApplicationController
  
  def index
  end

  def google_aut

    # require "net/http"
    # require "uri"
    # require "json"

    # parms = {
    #   token: params['code']
    # }

    # uri = URI.parse('https://slack.com/api/auth.test')
    # http = Net::HTTP.new(uri.host, uri.port)
    # http.use_ssl = true

    # request = Net::HTTP::Post.new(uri.request_uri)
    # request.body = parms.to_json

    # response = http.request(request)                                                                     

    if params["code"]
      Token.create(slack_token_data: params["code"])
    end
  end
end
