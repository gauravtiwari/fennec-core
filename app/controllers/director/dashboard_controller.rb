class Director::DashboardController < DirectorController
  def index
  end

  def set_title
    @title = "Dashboard"
    @current_menu = "dashboard"
  end
end
