class EventsController < ApplicationController
  def show
    @event = current_user.events.find_by(params[:id])
  end

  def index
    @events = Event.all
    @users = User.all
  end

  def new
    @event = Event.new
    @user = current_user
  end

  def create
    @user = current_user
    @event = current_user.events.create(title: params[:event][:title], date: params[:event][:date], time: params[:event][:time], location: params[:event][:location])
    redirect_to user_path @user
  end

  def edit
    @event = current_user.events.find_by(params[:id])
  end

  def update
    @user = current_user
    event = current_user.events.find_by(params[:id])
    event.update(title: params[:event][:title], date: params[:event][:date], time: params[:event][:time], location: params[:event][:location])
    redirect_to user_path @user
  end

  def destroy
    @user = current_user
    event = current_user.events.find_by(params[:id])
    event.destroy
    redirect_to user_path @user
  end
end

