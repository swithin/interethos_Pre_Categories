class DataAddGroupsHappenings < ActiveRecord::Migration
  def self.up
    GroupsHappening.load_from_file
  end

  def self.down
    GroupsHappening.delete_all
  end
end
