class CreateFlightOccurences < ActiveRecord::Migration
  def change
    create_table :flight_occurences do |t|
      t.string :fo_no
      t.string :report_no
      t.string :who_report
      t.string :who_update
      t.string :dca_reportable_incident
      t.string :status_report
      t.string :person_reporting
      t.string :position
      t.string :sub_report
      t.string :on_behalf
      t.string :ac_type
      t.string :ac_registration
      t.date   :occurence_date
      t.time   :occurence_time
      t.string :human_factor
      t.string :operation_base
      t.string :location_not_base
      t.string :reportable_occurence
      t.string :incident_accident
      t.string :ata_chapter
      t.string :ata_section
      t.string :death_injuries_damage
      t.string :report_manager
      t.string :delegate
      #flight occurence
      t.string :title_of_occurence
      t.text   :description_occurence
      t.text   :correction
      t.text   :root_cause
      t.text   :preventive_plan
      #flight information
      #regular authority
      t.string :regulatory_authorities
      t.date   :date_reported
      t.string :tech_log
      #crew
      t.string :commander
      t.string :co_pilot
      t.string :other_crew1
      t.string :other_crew2
      t.string :pilot_license
      t.string :co_pilot_license
      #flight
      t.string :flight
      t.string :route_from
      t.string :route_to
      t.string :flight_type
      t.string :nature_type
      t.string :returned_to_base
      t.string :phase_of_flight
      t.string :diverted_to
      t.string :flight_rule
      t.string :flight_condition
      t.string :time_of_day
      t.string :other_describe
      #attitude information
      t.string :attitude
      t.string :height
      t.string :flight_level
      #weather condition
      t.string :predictation
      t.string :icing
      t.string :oat
      t.string :visibility_distance
      t.string :taf
      t.string :metar
      #information customer passenger
      t.string :number_of_passengers
      t.string :have_noticed
      t.string :other_info
      t.string :inform_who

      t.timestamps
    end
  end
end
