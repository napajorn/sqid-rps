class MainController < ApplicationController
  before_filter :login_required
  #layout "main"
  def index
  	@username = session[:username]
	
  
  end
end
