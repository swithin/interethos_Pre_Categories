class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.string :question_or_uri
      t.references :happening

      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
