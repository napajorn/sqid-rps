class WelcomeController < ApplicationController
  #protect_from_forgery except: :authenticated
  def index
    session[:username]=nil
  	#@user = User.new
  end
  
  def authenticated
  	@username = params[:user][:first]
  	@password = Digest::SHA1.hexdigest(params[:user][:password])
  	@search_user = User.where('first = ? and hashed_password = ?', @username, @password)
  	unless @search_user.blank?
  		session[:username] = params[:user][:first]
  		flash[:success] = "Success!! ".html_safe
  		return redirect_to admin_index_path
  	else
  		flash[:error] = "Username or password invalid!!".html_safe
  		return redirect_to :controller => 'welcome', :action => 'index'
  	end
	#option to redirect with parameters
  	#{:username => params[:user][:username],
  	#:password => params[:user][:password] }
  	
  end
  
  private
  def set_username(username)
  	@username = User.find_by_first(username)
  	return @username
  end
  
  def login_params
  	params.require(:user).permit(:username, :password)
  end
  
  
  
end
