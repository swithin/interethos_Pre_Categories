class DataAddHappenings < ActiveRecord::Migration
  def self.up
    Happening.load_from_file
  end

  def self.down
    Happening.delete_all
  end
end
