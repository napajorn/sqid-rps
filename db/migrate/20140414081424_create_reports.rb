class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
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
      t.timestamps
    end
  end
end
