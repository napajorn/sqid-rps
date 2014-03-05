class AdminController < ApplicationController
  layout "admin"
  def index
    @user = User.all
    flash.discard
  end
  
  def show
    @user = User.all
    render :layout => false
  end
end
