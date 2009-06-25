class AddMissingForeignKeys < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :brand_id, :integer
    add_column :locations, :restaurant_id, :integer
  end

  def self.down
    remove_column :restaurants, :brand_id
    remove_column :locations, :restaurant_id
  end
end
