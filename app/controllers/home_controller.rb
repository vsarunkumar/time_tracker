class HomeController < ApplicationController
  def index
    @tasks = if params[:key]
               home_service.get_project_wise(current_user, params[:key])
             else
               home_service.get_tasks(current_user)
             end
  end

  private

  def home_service
    @home_service ||= HomeService.new
  end
end
