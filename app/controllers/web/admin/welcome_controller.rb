class Web::Admin::WelcomeController < Web::Admin::ApplicationController
  def index
    if current_user.role.datamanager?
      redirect_to admin_users_path
    end
  end
end
