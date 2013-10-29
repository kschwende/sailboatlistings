class CreateSailboats < ActiveRecord::Migration
  def change
    create_table :sailboats do |t|
      t.string :manufacturer
      t.string :model
      t.text :description
      t.text :equipment
      t.integer :year
      t.integer :length
      t.integer :beam
      t.integer :draft
      t.string :material
      t.string :hull
      t.integer :displacement
      t.string :boat_type
      t.string :rigging
      t.integer :births
      t.integer :cabins
      t.integer :heads
      t.integer :showers
      t.integer :engines
      t.string :engine_type
      t.string :fuel_type
      t.integer :hours
      t.integer :horsepower
      t.string :boat_location_general
      t.string :boat_location_city
      t.string :boat_location_state
      t.integer :boat_location_zip
      t.string :condition
      t.decimal :price
      t.datetime :create_date
      t.datetime :update_date

      t.timestamps
    end
  end
end
