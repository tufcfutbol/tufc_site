class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.integer :player_id
      t.string :season
      t.integer :year
      t.integer :goals
      t.integer :assists
      t.integer :yellow_cards
      t.integer :red_cards
      t.integer :games_played
      t.string :eboard_position

      t.timestamps
    end
  end

  def self.down
    drop_table :stats
  end
end
