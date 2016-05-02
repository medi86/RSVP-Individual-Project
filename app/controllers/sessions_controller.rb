class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    redirect_to root_path
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
