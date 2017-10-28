module Api

  class TokensController < ApiController

      def index
        get_token
        render json: @token
      end

      private

      def get_token
        begin
          @token = Token.last
        rescue ActiveRecord::RecordNotFound
          token = Token.new
          token.errors.add(:id, 'Does not exist')
          render_error(token, 404) && return
        end
      end
  end
end