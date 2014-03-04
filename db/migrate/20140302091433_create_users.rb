class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :position
      t.string :password
      t.string :email
      t.string :division
      t.string :business_unit
      t.string :base
      t.string :role
      t.string :is_pilot
      t.text :notes

      t.timestamps
    end
  end
end
