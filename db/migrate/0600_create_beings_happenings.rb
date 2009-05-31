class CreateBeingsHappenings < ActiveRecord::Migration
  def self.up
    create_table :beings_happenings do |t|
      t.references :being
      t.references :happening

      t.timestamps
    end
  end

  def self.down
    drop_table :beings_happenings
  end
end
