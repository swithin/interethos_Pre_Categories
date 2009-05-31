class DataAddUsers < ActiveRecord::Migration
  def self.up
    User.load_from_file
  end

  def self.down
    User.delete_all
  end
end
