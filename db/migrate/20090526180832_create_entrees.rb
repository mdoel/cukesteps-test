class CreateEntrees < ActiveRecord::Migration
  def self.up
    create_table :entrees do |t|
      t.integer :calories
      t.integer :fat_calories
      t.integer :cholesterol

      t.timestamps
    end
  end

  def self.down
    drop_table :entrees
  end
end
