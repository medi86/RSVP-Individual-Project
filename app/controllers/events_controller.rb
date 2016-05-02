class EventsController < ApplicationController

  def index
    @event = Event.find_by(@user)
  end

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = current_user.events.create(title: params[:event][:title], date: params[:event][:date], time: params[:event][:time], location: params[:event][:location])
    redirect_to user_path @user
  end

end

