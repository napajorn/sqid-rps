class CreatePhaseFlights < ActiveRecord::Migration
  def change
    create_table :phase_flights do |t|
      t.string :phase_name

      t.timestamps
    end
  end
end
