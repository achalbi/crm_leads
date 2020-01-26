class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.integer :floor_count
      t.string :lift_type
      t.string :floor_destination
      t.string :machine_mounting_room
      t.integer :stops_count
      t.string :cabin_type
      t.integer :opening_count
      t.string :volume
      t.integer :shaft_width
      t.integer :shaft_depth
      t.integer :lifts_count
      t.string :capacity
      t.string :capacity_units

      t.timestamps
    end
  end
end
