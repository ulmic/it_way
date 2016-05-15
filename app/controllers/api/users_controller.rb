class Api::UsersController < ApplicationController
  def create
    @user_form = UserForm.new_with_model
    params[:user][:year] = configus.current_year
    @user_form.submit params[:user]
    if @user_form.save
      head :ok
    else
      render json: {errors: @user_form.errors.full_messages.join("<br>")}, status: :bad_request
    end
  end
end
