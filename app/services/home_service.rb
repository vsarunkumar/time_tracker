class HomeService
  def get_tasks(user)
    user.tasks
  end

  def get_project_wise(current_user, key)
    current_user.tasks.where(project_id: key.to_i)
  end
end
