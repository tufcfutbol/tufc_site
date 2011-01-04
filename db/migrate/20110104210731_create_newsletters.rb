class CreateNewsletters < ActiveRecord::Migration
  def self.up
    create_table :newsletters do |t|
      t.text :entry
      t.integer :authored_by

      t.timestamps
    end
  end

  def self.down
    drop_table :newsletters
  end
end
