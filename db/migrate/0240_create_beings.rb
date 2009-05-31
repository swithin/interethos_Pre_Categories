class CreateBeings < ActiveRecord::Migration
  def self.up
    create_table :beings do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :validation

      t.timestamps
    end
  end

  def self.down
    drop_table :beings
  end
end
