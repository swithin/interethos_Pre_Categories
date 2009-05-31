class CreateGroupsHappenings < ActiveRecord::Migration
  def self.up
    create_table :groups_happenings do |t|
      t.references :group
      t.references :happening

      t.timestamps
    end
  end

  def self.down
    drop_table :groups_happenings
  end
end
