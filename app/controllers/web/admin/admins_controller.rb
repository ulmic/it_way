class Web::Admin::AdminsController < Web::Admin::ApplicationController
  def index
    @admins = {}
    @admins[:confirmed] = Kaminari.paginate_array(Admin.order('created_at DESC').decorate).page params[:page]
  end

  def new
    @admin_form = AdminForm.new_with_model
  end

  def edit
    @admin_form = AdminForm.find_with_model(params[:id])
  end

  def create
    @admin_form = AdminForm.new_with_model
    @admin_form.submit(params[:admin])
    if @admin_form.save
      redirect_to admin_admins_path
    else
      render action: :new
    end
  end

  def update
    @admin_form = AdminForm.find_with_model params[:id]
    @admin_form.submit(params[:admin])
    if @admin_form.save
      redirect_to edit_admin_admin_path @admin_form.model
    else
      render action: :edit
    end
  end

  def destroy
    @admin = Admin.find params[:id]
    @admin.remove
    redirect_to admin_admins_path
  end
end
