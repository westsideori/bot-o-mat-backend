class RobotsController < ApplicationController
  before_action :authenticate, only: [:create, :index]

  def create
    robot = Robot.create(robot_params)
    if robot.valid?
      render json: robot
    end
  end

  def index
    robots = Robot.all
    render json: robots
  end

  private

  def robot_params
    params.permit(:robot_type, :image_url)
  end
end
