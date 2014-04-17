class ReportController < ApplicationController
  before_filter :login_required
  layout "report"
  
  def index
    @report = Report.new
  end
  
  def flight_occurence
    @flight_occurence = FlightOccurence.new
    
  end
  
  def create_flight_occurence
    
    render :layout => false
  end
  
  
end
