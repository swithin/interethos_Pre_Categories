class DataAddBeingsGroups < ActiveRecord::Migration
  def self.up
    BeingsGroup.load_from_file
  end

  def self.down
    BeingsGroup.delete_all
  end
end
