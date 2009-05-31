class CreateHappeningsIssues < ActiveRecord::Migration
  def self.up
    create_table :happenings_issues do |t|
      t.references :happening
      t.references :issue

      t.timestamps
    end
  end

  def self.down
    drop_table :happenings_issues
  end
end
