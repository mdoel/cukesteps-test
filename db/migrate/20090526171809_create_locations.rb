class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :address
      t.integer :restaurant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
