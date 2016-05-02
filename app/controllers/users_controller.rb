class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user]["name"], email: params[:user]["email"], password: params[:user]["password"] )
    flash[:success] = "Welcome ^______^"
    redirect_to root_path
    end
end
