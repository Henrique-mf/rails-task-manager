class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  def index
    @tasks = Task.all
  end

  def show
     # método apagado por conta da refatoração - linha 51
    # @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def new
    @task = Task.new
  end

  def edit
     # método apagado por conta da refatoração - linha 51
    # @task = Task.find(params[:id])
  end

  def update
     # método apagado por conta da refatoração - linha 51
    # @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    # método apagado por conta da refatoração - linha 51
    # @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  # setando o método abaixo para refatorar e mudar o tamanho do código
  def set_task
    @task = Task.find(params[:id])
  end
end
