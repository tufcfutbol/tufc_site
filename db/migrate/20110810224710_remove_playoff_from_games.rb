class RemovePlayoffFromGames < ActiveRecord::Migration
  def self.up
    remove_column :games, :playoff_game
  end

  def self.down
    add_column :games, :playoff_game, :boolean
  end
end
