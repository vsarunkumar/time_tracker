class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def is_admin?
    true if current_user.admin
  end
end
