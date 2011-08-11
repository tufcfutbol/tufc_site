class RemoveHomeFromGames < ActiveRecord::Migration
  def self.up
    remove_column :games, :home
  end

  def self.down
    add_column :games, :home
  end
end

