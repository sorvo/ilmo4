# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  before_filter :auth_required
  
  protected
  
  def auth_required
    unless session[:user]
      flash[:notice] = "You're not logged in"
      redirect_to sessions_url
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
