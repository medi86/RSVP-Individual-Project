class EventsController < ApplicationController

  def index
    @event = Event.find_by(@user)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
  end

   private

  def event_params
    params.require(:event)
  end
end
