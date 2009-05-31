class DataAddBeings < ActiveRecord::Migration
  def self.up
    Being.load_from_file
  end

  def self.down
    Being.delete_all
  end
end
