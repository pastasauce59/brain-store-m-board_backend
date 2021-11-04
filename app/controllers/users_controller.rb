class UsersController < ApplicationController

  skip_before_action :logged_in?, only: [:create, :login] 

  def index
    users = User.all 
    render json: users
  end

  def login
    user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        render json: { user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
      else
        render json: { error: "Invalid username or password." }, status: :unauthorized
      end
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      render json: user, status: 201
    else
    render json: {error: user.errors.full_messages}, status: 422
    end
  end

        private

  def user_params
    params.permit(:username, :password)
  end


end
