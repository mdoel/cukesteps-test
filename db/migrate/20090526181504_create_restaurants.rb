class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.boolean :wifi
      t.integer :brand_id

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
