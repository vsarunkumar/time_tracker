class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @projects = Project.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render('new')
    end
  end

  def edit
    @task = Task.find(params[:id])
    @projects = Project.all
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to(action: 'show', id: @task.id)
    else
      render('edit')
    end
  end

  def delete
    @task = Task.find(params[:id])
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to(action: 'index')
  end

  private

  def task_params
    params.require(:task).permit(:name, :project_id, :hour)
  end
end
