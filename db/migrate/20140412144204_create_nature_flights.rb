class CreateNatureFlights < ActiveRecord::Migration
  def change
    create_table :nature_flights do |t|
      t.string :nature_name

      t.timestamps
    end
  end
end
