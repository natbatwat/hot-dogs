class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @events = event.create(event_params)
    if @event.save
      redirect_to @event
    else
      redirect_to(events_path)
    end
  end

  def edit
    @event = Event.find(params[:id])
    # puts @event
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render 'new'
    end
  end


  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :place, :time, :event_rating)
    end

end
  

