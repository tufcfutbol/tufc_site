class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.boolean :first_team
      t.string :preffered_position
      t.integer :rating
      t.string :hometown
      t.text :notes
      t.string :first_name
      t.string :last_name
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
