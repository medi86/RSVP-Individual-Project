class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user
      log_in user
      redirect_to user_path user
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
