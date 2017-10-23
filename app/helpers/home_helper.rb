module HomeHelper
  def is_admin
    true if current_user.admin
  end
end
