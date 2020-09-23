# frozen_string_literal: true

# rubocop:disable Metrics/LineLength

# rubocop:disable Metrics/AbcSize

# rubocop:disable Style/IfInsideElse

# rubocop:disable Metrics/MethodLength

# authentication_controller
class AuthenticationController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    if !user
      render json: { message: 'user not exist. Please register!' }, status: :unauthorized
    else
      if user.authenticate(params[:password])
        secret_key = Rails.application.secrets.secret_key_base
        token = JWT.encode(
          {
            user_id: user.id,
            username: user.username
          }, secret_key
        )
        render json: {
          token: token
        }
      else
        render json: { message: 'password incorrect' }, status: :unauthorized
      end
    end
  end
end

# rubocop:enable Metrics/LineLength

# rubocop:enable Metrics/MethodLength

# rubocop:enable Metrics/AbcSize

# rubocop:enable Style/IfInsideElse
