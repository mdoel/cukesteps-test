class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.integer :entree_id
      t.integer :restaurant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
