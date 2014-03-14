class AdminController < ApplicationController
  layout "admin"
  def index
    @user = User.all
    @user = User.new
    flash.discard
  end
  
  def show
    @user = User.all
    
    render :layout => false
  end
  
  def create
    @user = User.new
    
    render :layout => false
  end
  
  def new
    
    if params[:first].present? && params[:last].present?
      @firstname = params[:first]
      @lastname = params[:last]
      @password = params[:password]
      @user = User.new(
        :first => params[:first], 
        :last => params[:last],
        :hashed_password => Digest::SHA1.hexdigest(params[:password])
      )
  
      if @user.save
        flash[:notice] = 'User was successfully created.'
      else
        flash[:error] = @user.errors.full_messages
      end
    end
    
    render :layout => false
  end
  
  def destroy
    User.destroy(params[:id])
    flash[:notice] = 'User deleted successfully.'
    #@user.destroy
  end
  
  def user_params
    params.require(:user).permit(:first, :last, :hashed_password)
  end
end
