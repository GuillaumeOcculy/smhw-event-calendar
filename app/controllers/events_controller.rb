class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = 'Event created'
      redirect_to root_path
    else
      flash[:danger] = 'Event not created'
      redirect_to root_path
    end
  end


  private
  def event_params
    params.require(:event).permit(:starts_at, :ends_at, :description)
  end
end
