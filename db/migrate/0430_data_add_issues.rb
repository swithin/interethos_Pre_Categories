class DataAddIssues < ActiveRecord::Migration
  def self.up
    Issue.load_from_file
  end

  def self.down
    Issue.delete_all
  end
end
