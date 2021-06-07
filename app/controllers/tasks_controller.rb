class TasksController < ApplicationController
  before_action :authenticate, only: [:create]

  def create
    task = Task.create(task_params)
    render json: task
  end

  private

  def task_params
    params.permit(:description, :eta)
  end
end
