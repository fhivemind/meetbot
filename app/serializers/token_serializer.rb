class TokenSerializer < ActiveModel::Serializer
  attributes :slack_token_data, :google_token_data
end