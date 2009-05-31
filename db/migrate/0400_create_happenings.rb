class CreateHappenings < ActiveRecord::Migration
  def self.up
    create_table :happenings do |t|
      t.string :name
      t.text :location
      t.datetime :date_and_time
      t.text :description
      t.references :realm

      t.timestamps
    end
  end

  def self.down
    drop_table :happenings
  end
end
