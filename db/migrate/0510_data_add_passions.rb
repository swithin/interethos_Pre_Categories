class DataAddPassions < ActiveRecord::Migration
  def self.up
    Passion.load_from_file
  end

  def self.down
    Passion.delete_all
  end
end
