class Api::UsersController < ApplicationController
  def create
    @user_form = UserForm.new_with_model
    @user_form.submit params[:user]
    if @user_form.save
      head :ok
    else
      head :bad_request
    end
  end
end
