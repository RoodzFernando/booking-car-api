# frozen_string_literal: true

# application_controller
class ApplicationController < ActionController::API
  include ExceptionHandler

  private

  def token_validity
    user_authorization = request.headers[:authorization]
    if !user_authorization
      render json: { message: 'not authorized' }
    else
      token = user_authorization.split(' ')[1]
      secret = Rails.application.secrets.secret_key_base
      decoded_token = JWT.decode(token, secret)[0]
      @user = User.find(decoded_token['user_id'])
    end
  end

  def encode_token(payload = {})
    exp = 24.hours.from_now
    payload[:exp] = exp.to_i
    JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
  end
end
