class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_login
    redirect_to login_path if !logged_in?
  end

  def logged_in?
    !!@current_user #will be nil if user_id isn't set
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
