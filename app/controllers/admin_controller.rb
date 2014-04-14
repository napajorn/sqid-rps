class AdminController < ApplicationController
  before_filter :login_required
  layout "admin"
  def index
    @user = User.all
    @user = User.new

    flash.discard
  end
  
  def show
    if params[:search].present?
       @search = params[:search]
       @user = User.all(:conditions => ["first LIKE ? or last LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%"])
    else
       @user = User.all
    end
     
    
    render :layout => false
  end
  
  def create
    @user = User.new
    
    render :layout => false
  end
  
  def new
    
    if params[:first].present? && params[:email].present? 
      #@firstname = params[:first]
      #@lastname = params[:last]
      #@password = params[:password]
      #@email = params[:email]
      #@division = params[:division]
      #@business_unit = params[:business_unit]
      #@base = params[:base]
      #@role = params[:role]
      #@is_pilot = params[:is_pilot]
      #@note = params[:note]
      @user = User.new(
        :first => params[:first], 
        :last => params[:last],
        :hashed_password => Digest::SHA1.hexdigest(params[:password]),
        :email => params[:email],
        :division => params[:division],
        :business_unit => params[:business_unit],
        :base => params[:base],
        :role => params[:role],
        :is_pilot => params[:is_pilot],
        :notes =>  params[:notes]
      )
  
      if @user.save
        #flash[:notice] = 'User was successfully created.'
      else
        flash[:error] = @user.errors.full_messages
      end
    end
    
    render :layout => false
  end
  
  def update
    @user = User.find(params[:id])
    
    if params[:first].present? && params[:email].present?
      @user.update_attributes(
        :first => params[:first], 
        :last => params[:last],
        #:hashed_password => Digest::SHA1.hexdigest(params[:password]),
        :email => params[:email],
        :division => params[:division],
        :business_unit => params[:business_unit],
        :base => params[:base],
        :role => params[:role],
        :is_pilot => params[:is_pilot],
        :notes =>  params[:notes]
      )
      if @user.save
        #flash[:notice] = 'User was successfully created.'
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
