class UsersController < ApplicationController
  def index
    users = User.all
    render json: {data: users}
  end

  def show
    user = User.find(params[:id])
      render json: {data: user}
  end

  def create
    user = User.new(user_params)
    if user.save 
      render json: {
        jwt: encode_token({
          id: user.id,
          username: user.username
        }),
        message: "success"
      }
    else
      render json: {message: 'user not created successfully'}
    end
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: {data: user}
    else
      render json: {message: 'update not successful'}
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
