class ReportController < ApplicationController
  before_filter :login_required
  layout "report"
  
  def index
    @report = Report.new
    @flight_occurence = FlightOccurence.all
  end
  
  def flight_occurence
    @flight_occurence = FlightOccurence.new
    
  end
  
  def create_flight_occurence
    @ata_chapter = AtaChapter.all
    @nature_flight = NatureFlight.all
    @phase_flight = PhaseFlight.all
    render :layout => false
  end
  
  def new_flight_occurence
    if params[:ac_type].present? &&
       params[:ac_registration].present? && 
       params[:title_of_occurence].present? && 
       params[:occurence_date].present? && 
       params[:human_factor].present? && 
       params[:operation_base].present? && 
       params[:description_occurence].present? &&
       params[:commander].present? && 
       params[:number_of_passengers].present?
       
      @flight_occurence = FlightOccurence.new(
        :fo_no => params[:fo_no], 
        :who_report => session[:username],
        :who_update => session[:username],
        :dca_reportable_incident => params[:dca_reportable_incident],
        :status_report => params[:status_report].upcase,
        :person_reporting => params[:person_reporting],
        :position => params[:position],
        :sub_report => params[:sub_report],
        :on_behalf => params[:on_behalf],
        :ac_type => params[:ac_type],
        :ac_registration => params[:ac_registration],
        :occurence_date => params[:occurence_date],
        :occurence_time => params[:occurence_time],
        :human_factor => params[:human_factor],
        :operation_base => params[:operation_base],
        :location_not_base => params[:location_not_base],
        :reportable_occurence => params[:reportable_occurence],
        :incident_accident => params[:incident_accident],
        :ata_chapter => params[:ata_chapter],
        :ata_section => params[:ata_section],
        :insurance_claim => params[:insurance_claim],
        :report_manager => params[:report_manager],
        :delegate => params[:delegate],
        :title_of_occurence => params[:title_of_occurence],
        :description_occurence => params[:description_occurence],
        :correction => params[:correction],
        :root_cause => params[:root_cause],
        :preventive_plan => params[:preventive_plan],
        :precipitation => params[:precipitation],
        :regulatory_authorities => params[:regulatory_authorities],
        :date_reported => params[:date_reported],
        :tech_log => params[:tech_log],
        :commander => params[:commander],
        :co_pilot => params[:co_pilot],
        :other_crew1 => params[:other_crew1],
        :other_crew2 => params[:other_crew2],
        :pilot_license => params[:pilot_license],
        :co_pilot_license => params[:co_pilot_license],
        :flight => params[:flight],
        :route_from => params[:route_from],
        :route_to => params[:route_to],
        :flight_type => params[:flight_type],
        :nature_flight => params[:nature_flight],
        :returned_to_base => params[:returned_to_base],
        :phase_of_flight => params[:phase_of_flight],
        :diverted_to => params[:diverted_to],
        :flight_rule => params[:flight_rule],
        :flight_condition => params[:flight_condition],
        :time_of_day => params[:time_of_day],
        :other_describe => params[:other_describe],
        :altitude => params[:altitude],
        :height => params[:height],
        :flight_level => params[:flight_level],
        :precipitation => params[:precipitation],
        :icing => params[:icing],
        :oat => params[:oat],
        :visibility_distance => params[:visibility_distance] ,
        :taf => params[:taf],
        :metar => params[:metar],
        :number_of_passengers =>  params[:number_of_passengers],
        :have_noticed => params[:have_noticed],
        :other_info => params[:other_info],
        :inform_who => params[:inform_who]
      )
  
      if @flight_occurence.save
        #flash[:notice] = 'User was successfully created.'
      else
        flash[:error] = @flight_occurence.errors.full_messages
      end
    end  
    render :layout => false
  end
  
  def destroy_flight_occurence
    FlightOccurence.destroy(params[:id])
    flash[:notice] = 'Deleted successfully.'
  end
    
  def show_flight_occurence
    @flight_occurence = FlightOccurence.all(:order => "created_at DESC")
    
  end
  
  def edit_flight_occurence
    @ata_chapter = AtaChapter.all
    @nature_flight = NatureFlight.all
    @phase_flight = PhaseFlight.all
    @flight_occurence = FlightOccurence.find(params[:id])
    
    if params[:ac_type].present? &&
       params[:ac_registration].present? && 
       params[:title_of_occurence].present? && 
       params[:occurence_date].present? && 
       params[:human_factor].present? && 
       params[:operation_base].present? && 
       params[:description_occurence].present? &&
       params[:commander].present? && 
       params[:number_of_passengers].present?
       
      @flight_occurence.update_attributes(
        :fo_no => params[:fo_no], 
        :who_update => session[:username],
        :dca_reportable_incident => params[:dca_reportable_incident],
        :status_report => params[:status_report].upcase,
        :person_reporting => params[:person_reporting],
        :position => params[:position],
        :sub_report => params[:sub_report],
        :on_behalf => params[:on_behalf],
        :ac_type => params[:ac_type],
        :ac_registration => params[:ac_registration],
        :occurence_date => params[:occurence_date],
        :occurence_time => params[:occurence_time],
        :human_factor => params[:human_factor],
        :operation_base => params[:operation_base],
        :location_not_base => params[:location_not_base],
        :reportable_occurence => params[:reportable_occurence],
        :incident_accident => params[:incident_accident],
        :ata_chapter => params[:ata_chapter],
        :ata_section => params[:ata_section],
        :insurance_claim => params[:insurance_claim],
        :report_manager => params[:report_manager],
        :delegate => params[:delegate],
        :title_of_occurence => params[:title_of_occurence],
        :description_occurence => params[:description_occurence],
        :correction => params[:correction],
        :root_cause => params[:root_cause],
        :precipitation => params[:precipitation],
        :regulatory_authorities => params[:regulatory_authorities],
        :date_reported => params[:date_reported],
        :tech_log => params[:tech_log],
        :commander => params[:commander],
        :co_pilot => params[:co_pilot],
        :other_crew1 => params[:other_crew1],
        :other_crew2 => params[:other_crew2],
        :pilot_license => params[:pilot_license],
        :co_pilot_license => params[:co_pilot_license],
        :flight => params[:flight],
        :route_from => params[:route_from],
        :route_to => params[:route_to],
        :flight_type => params[:flight_type],
        :nature_flight => params[:nature_flight],
        :returned_to_base => params[:returned_to_base],
        :phase_of_flight => params[:phase_of_flight],
        :diverted_to => params[:diverted_to],
        :flight_rule => params[:flight_rule],
        :flight_condition => params[:flight_condition],
        :time_of_day => params[:time_of_day],
        :other_describe => params[:other_describe],
        :altitude => params[:altitude],
        :height => params[:height],
        :flight_level => params[:flight_level],
        :precipitation => params[:precipitation],
        :icing => params[:icing],
        :oat => params[:oat],
        :visibility_distance => params[:visibility_distance],
        :taf => params[:taf],
        :metar => params[:metar],
        :number_of_passengers =>  params[:number_of_passengers],
        :have_noticed => params[:have_noticed],
        :other_info => params[:other_info],
        :inform_who => params[:inform_who]
      )
      if @flight_occurence.save
        #flash[:notice] = 'User was successfully created.'
      else
        flash[:error] = @flight_occurence.errors.full_messages
      end
    end
    
    render :layout => false  
  end
  
  def create_png
      image_file = File.open("#{Rails.root}/sample_image.png","wb")
      image_file.write(Base64.decode64(params[:svg].gsub('data:image/png\;base64,', '')))
      image_file.close()
  end
end
