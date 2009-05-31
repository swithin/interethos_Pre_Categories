class DataAddGroups < ActiveRecord::Migration
  def self.up
	Group.load_from_file
  end

  def self.down
    Group.delete_all
  end
end
