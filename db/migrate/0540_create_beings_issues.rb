class CreateBeingsIssues < ActiveRecord::Migration
  def self.up
    create_table :beings_issues do |t|
      t.references :being
      t.references :issue
      t.references :passion

      t.timestamps
    end
  end

  def self.down
    drop_table :beings_issues
  end
end
