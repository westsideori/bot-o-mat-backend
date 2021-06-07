class UserRobotsController < ApplicationController
  before_action :authenticate, only: [:create, :update, :show, :index]

  def create
    user_robot = UserRobot.create(user_robot_params)
    render json: user_robot
  end

  def update
    user_robot = UserRobot.find(params[:id])
    user_robot.update(user_robot_params)
    render json: user_robot
  end

  def show
    user_robot = UserRobot.find(params[:id])
    render json: user_robot
  end

  def index
    user_robots = UserRobot.where(user_id: params[:user_id])
    render json: user_robots
  end

  private

  def user_robot_params
    params.permit(:name, :user_id, :robot_id, :completed_tasks)
  end
end
