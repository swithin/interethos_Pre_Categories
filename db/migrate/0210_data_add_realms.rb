class DataAddRealms < ActiveRecord::Migration
  def self.up
    Realm.load_from_file
  end

  def self.down
    Realm.delete_all
  end
end
