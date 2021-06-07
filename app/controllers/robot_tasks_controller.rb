class RobotTasksController < ApplicationController
  before_action :authenticate, only: [:create, :index]
  def create
    robot_task = RobotTask.create(robot_task_params)
    render json: robot_task
  end

  def index
    robot = Robot.find(params[:robot_id])
    robot_tasks = robot.tasks
    render json: robot_tasks
  end

  private

  def robot_task_params
    params.permit(:robot_id, :task_id)
  end

  
end
