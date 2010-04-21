class CreateWeightLevels < ActiveRecord::Migration
  def self.up
    create_table :weight_levels do |t|
      t.float :max, :null => :false, :default => 0
      t.float :cost, :null => :false, :default => 0
    end
    add_index :weight_levels, :max, :unique => :true
  end

  def self.down
    drop_table :weight_levels
  end
end
