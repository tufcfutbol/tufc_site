class RemoveAuthoredByFromNewsletters < ActiveRecord::Migration
  def self.up
    remove_column :newsletters, :authored_by
  end

  def self.down
    add_column :newsletters, :authored_by, :integer
  end
end
