# frozen_string_literal: true

# rubocop:disable Metrics/LineLength

# rubocop:disable Style/IfInsideElse

# rubocop:disable Metrics/MethodLength

# authentication_controller
class AuthenticationController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    if !user
      render json: { message: 'user does not exist. Please register!' }, status: 422
    else
      if user.authenticate(params[:password])
        token = encode_token(
          {
            user_id: user.id,
            username: user.username
          }
        )
        render json: {
          token: token
        }
      else
        render json: { message: 'Incorrect credentials' }, status: :unauthorized
      end
    end
  end
end

# rubocop:enable Metrics/LineLength

# rubocop:enable Metrics/MethodLength

# rubocop:enable Style/IfInsideElse
