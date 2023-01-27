class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def index
    @users = User.find_by(user_id: params[:user_id])
  end
  def create
    @user = Task.new(task_params)

    if @task.save
      redirect_to @task
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = Task.find(params[:id])

  end
  private
  def task_params
    params.require(:task).permit(:name, :notes, :user_id)
  end
end
