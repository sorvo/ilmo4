class SessionsController < ApplicationController
  
  skip_before_filter :auth_required
  
  def create
    begin
      user = User.authenticate(params[:user][:username],params[:user][:password])
    rescue
      flash[:error] = "Login failed"
      redirect_to sessions_url
      return
    end
    
    session[:user] = user.id
    session[:username] = user.username
    flash[:notice] = "Successfully logged in"
    redirect_to courses_url
  end
  
  def destroy
    reset_session
    redirect_to sessions_url
  end
  
  def register
  end
  
end
