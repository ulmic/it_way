class Web::WelcomeController < Web::ApplicationController
  def index
    @programmer = User.new
  end
end
