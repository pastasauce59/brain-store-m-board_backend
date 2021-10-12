class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users
  end

  def login
    # find the user by their username
    user = User.find_by(username: params[:username])
    
      # if the user exists and their password matches, log them in
      if user 
        # && guest.authenticate(params[:password])
        # save user_id in session so we can use it in future requests
        #   session[:user_id] = user.id
        # return the user in the response
        render json: user
      else
        # for invalid username/password combos, send error messages to the front end
        render json: { error: "Invalid username or password" }, status: :unauthorized
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
