class Web::ApplicationController < ApplicationController
  include Concerns::AuthManagment
  include Concerns::TechinalPagesManagment
end
