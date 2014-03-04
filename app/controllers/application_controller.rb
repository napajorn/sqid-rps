class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
 def current_user
    @current_user ||= session[:username] unless session[:username].blank?
 end

 def logged_in?
	current_user
 end

 def login_required
    unless logged_in?
      redirect_to root_path, :alert => "You must first log in before accessing this page."
    end
 end
  
end
