class DataAddHappeningsIssues < ActiveRecord::Migration
  def self.up
    HappeningsIssue.load_from_file
  end

  def self.down
    HappeningsIssue.delete_all
  end
end
