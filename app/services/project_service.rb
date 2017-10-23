class ProjectService
  def get_project(user)
    user.projects
  end

  def get_project_tasks(user, id)
    user.tasks.where(project: id.to_i)
  end
end
