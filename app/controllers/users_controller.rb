class UsersController < ApplicationController
  
  skip_before_filter :auth_required, :only => [:new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new params[:user]
    if @user.save
        flash[:notice] = "Account created."
        redirect_to sessions_url
    else
      render :action => :new
    end
  end
  
  
  
end
