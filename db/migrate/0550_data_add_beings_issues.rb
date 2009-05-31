class DataAddBeingsIssues < ActiveRecord::Migration
  def self.up
    BeingsIssue.load_from_file
  end

  def self.down
    BeingsIssue.delete_all
  end
end
