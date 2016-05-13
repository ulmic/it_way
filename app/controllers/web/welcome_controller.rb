class Web::WelcomeController < Web::ApplicationController
  def index
    @user_form = UserForm.new_with_model
  end
end
