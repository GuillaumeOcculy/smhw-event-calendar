class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: 'good'
    else
      redirect_to root_path, notice: 'not good'
    end
  end


  private
  def event_params
    params.require(:event).permit(:starts_at, :ends_at, :description)
  end
end
