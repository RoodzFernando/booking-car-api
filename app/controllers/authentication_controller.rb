class AuthenticationController < ApplicationController
  
  def create
    user = User.find_by(username: params[:username])
    # debugger
    if user && user.authenticate(params[:password])
      render json: {
        jwt: encode_token({
          id: user.id,
          username: user.username
        })
      }
    else
      head :not_found
      render json: {message: 'No username found!'}
    end
  end

  private

  def encode_token(payload={})
    exp = 24.hours.from_now
    payload[:exp] = exp.to_i
    JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
  end

end
