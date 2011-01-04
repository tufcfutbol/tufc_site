class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.datetime :date
      t.string :against
      t.integer :tufc_goals
      t.integer :against_goals
      t.boolean :home
      t.boolean :league_game
      t.boolean :playoff_game

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
