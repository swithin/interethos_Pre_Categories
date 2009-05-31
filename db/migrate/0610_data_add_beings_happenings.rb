class DataAddBeingsHappenings < ActiveRecord::Migration
  def self.up
    BeingsHappening.load_from_file
  end

  def self.down
    BeingsHappening.delete_all
  end
end
