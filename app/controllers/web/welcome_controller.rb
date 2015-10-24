class Web::WelcomeController < Web::ApplicationController
  def index
    @page = Page.find 2
  end
end
