class AddAuthoredByToNewsletters < ActiveRecord::Migration
  def self.up
    add_column :newsletters, :authored_by, :string
  end

  def self.down
    remove_column :newsletters, :authored_by
  end
end
