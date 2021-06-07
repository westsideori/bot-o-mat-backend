class UsersController < ApplicationController
  before_action :authenticate, only: [:show]
  def create
    user = User.create(user_params)
    if user.valid?
      token = JWT.encode({user_id: user.id}, "ori", 'HS256')
      render json: { user: UserSerializer.new(user), token: token }
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    users = User.all  
    render json: users
  end

  def show
    render json: @current_user
  end

  def login
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      token = JWT.encode({user_id: user.id}, "ori", 'HS256')
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(:name, :password)
  end 
end
