class RenameFlightOccurence < ActiveRecord::Migration
  def change
    rename_column :flight_occurences, :death_injuries_damage, :insurance_claim
    rename_column :flight_occurences, :attitude, :altitude
    rename_column :flight_occurences, :predictation, :precipitation
    rename_column :flight_occurences, :nature_type, :nature_flight
  end
end
