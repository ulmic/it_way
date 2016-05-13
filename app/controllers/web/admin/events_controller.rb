class Web::Admin::EventsController < Web::Admin::ApplicationController
  def index
    @pages = {}
    @pages[:all] = Kaminari.paginate_array(Event.all.order('created_at DESC')).page params[:page]
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to admin_events_path
    else
      render action: :new
    end
  end

  def update
    @event = Event.find params[:id]
    if @event.update_attributes event_params
      redirect_to edit_admin_event_path, @event
    else
      render action: :edit
    end
  end

  def destroy
    @event = Event.find params[:id]
    @event.destroy
    redirect_to admin_events_path
  end

  private
  def event_params
    params.require(:event).permit(:date, :manager, :place, :photo)
  end
end
