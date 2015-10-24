class Web::Admin::PagesController < Web::Admin::ApplicationController
  def index
    @pages = {}
    @pages[:all] = Kaminari.paginate_array(Page.all.order('created_at DESC')).page params[:page]
  end

  def new
    @page_form = PageForm.new_with_model
  end

  def edit
    @page_form = PageForm.find_with_model(params[:id])
  end

  def create
    @page_form = PageForm.new_with_model
    @page_form.submit(params[:page])
    if @page_form.save
      redirect_to admin_pages_path
    else
      render action: :new
    end
  end

  def update
    @page_form = PageForm.find_with_model params[:id]
    @page_form.submit(params[:page])
    if @page_form.save
      redirect_to edit_admin_page_path @page_form.model
    else
      render action: :edit
    end
  end

  def destroy
    @page = Page.find params[:id]
    @page.destroy
    redirect_to admin_pages_path
  end
end
