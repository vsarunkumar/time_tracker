class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render('new')
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to(action: 'show', id: @project.id)
    else
      render('edit')
    end
  end

  def delete
    @project = Project.find(params[:id])
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    redirect_to(action: 'index')
  end

  def excel_sheet
    @tasks = project_service.get_project_tasks(current_user, params[:id])
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :details)
  end

  def project_service
    @project_service ||= ProjectService.new
  end
end
