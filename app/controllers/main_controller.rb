class MainController < ApplicationController
  before_filter :login_required
  def index
  	@username = session[:username]
	
  
  end
end
