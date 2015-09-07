class Web::WelcomeController < Web::ApplicationController
  def index
    @programmer = UserForm.new_with_model
    @designer = UserForm.new_with_model
    @circuitry = UserForm.new_with_model
  end
end
