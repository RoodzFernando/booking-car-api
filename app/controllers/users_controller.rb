# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength

# users_controller
class UsersController < ApplicationController
  def index
    users = User.all
    render json: { data: users }
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: {
        jwt: encode_token({
                            id: user.id,
                            username: user.username
                          }),
        message: 'success'
      }
    else
      render json: { message: user.errors.full_messages }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end

# rubocop:enable Metrics/MethodLength
